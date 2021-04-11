class BasicBrandDetailsSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :resource_id, :resource_type

  attribute :storefront_slug do |record|
    record.storefront_slug
  end
end
