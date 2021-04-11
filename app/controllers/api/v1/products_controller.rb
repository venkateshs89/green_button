class Api::V1::ProductsController < ApplicationController

  before_action :set_product, only: [:show, :product_detail]
  before_action :set_products, only: [:auto_complete]

  def show
    render json: { data: ProductSerializer.new(@product).to_h }, status: 200
  end

  def product_detail
    render json: { data: ProductSerializer.new(@product).to_h }, status: 200
  end

  def auto_complete
    order_by = Arel.sql('LENGTH(name) ASC')
    query = params[:term].to_s
    sanitized_data = @products.where('lower(name) ILIKE :query', query: "%#{query}%").order(order_by).limit(30)
    results = sanitized_data.map { |x| [x.id, x.name, x.slug] }
    render json: results.map { |x| { id: x[0], full_name: x[1], slug: x[2] } }, status: 200
  end

  private

  def set_product
    @product =  Product.friendly.find(params[:id])
  rescue
    render json: { message: 'Product not found' }, status: 404
  end

  def set_products
    case params[:entity_type]
    when 'storefront'
      storefront = Storefront.friendly.find(params[:entity_slug])
      @products = storefront.products
    when 'brand'
      brand = Brand.friendly.find(params[:entity_slug])
      @products = brand.products
    when 'product'
      product = Product.friendly.find(params[:entity_slug])
      storefront = product.resource
      @products = storefront.products
    else
      @products = Product.all
    end
  end
end
