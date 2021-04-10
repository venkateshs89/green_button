class Api::V1::StorefrontsController < ApplicationController
  before_action :set_storefront, only: [:show]

  def show
    render json: { data: StorefrontSerializer.new(@storefront).to_h }, status: 200
  end

  def index
    render json: { data: BasicStorefrontDetailsSerializer.new(Storefront.all).to_h }, status: 200
  end

  private

  def set_storefront
    @storefront = Storefront.friendly.find(params[:id])
  rescue
    render json: { message: 'Storefront not found' }, status: 404
  end
end
