class Api::V1::ProductsController < ApplicationController

  before_action :set_product, only: [:show]

  def show
    render json: { data: ProductSerializer.new(@product).to_h }, status: 200
  end

  def product_detail
    render json: { data: ProductSerializer.new(@product).to_h }, status: 200
  end

  def auto_complete
    order_by = Arel.sql('LENGTH(name) ASC')
    query = params[:term].to_s
    sanitized_data = Product.where('lower(name) ILIKE :query', query: "%#{query}%").order(order_by).limit(30)
    results = sanitized_data.map { |x| [x.id, "#{x.name}"] }
    render json: results.map { |x| { id: x[0], full_name: x[1] } }, status: 200
  end

  private

  def set_product
    @product = Product.find(params[:id])
  rescue
    render json: { message: 'Product not found' }, status: 404
  end
end
