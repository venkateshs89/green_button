class BasicProductDetailsSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :description, :slug, :resource_id, :resource_type

  attribute :product_name do |record|
    record.name
  end

  attribute :storefront_name do |record|
    record.storefront_name
  end

  attribute :brand_name do |record|
    record.brand_name
  end

  attribute :storefront_slug do |record|
    record.storefront_slug
  end
end
