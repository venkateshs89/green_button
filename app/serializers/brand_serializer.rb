class BrandSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :resource_id, :resource_type, :created_at, :updated_at

  attribute :storefront_slug do |record|
    record.storefront_slug
  end

  attribute :products do |record|
    BasicProductDetailsSerializer.new(record.products).to_h
  end
end
