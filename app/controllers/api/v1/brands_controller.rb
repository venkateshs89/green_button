class Api::V1::BrandsController < ApplicationController
  before_action :set_brand, only: [:show]

  def show
    render json: { data: BrandSerializer.new(@brand).to_h }, status: 200
  end

  private

  def set_brand
    @brand = Brand.friendly.find(params[:id])
  rescue
    render json: { message: 'Brand not found' }, status: 404
  end
end
