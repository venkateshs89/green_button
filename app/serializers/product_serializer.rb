class ProductSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :resource_id, :resource_type, :industry, :markets, :technologies,
             :physical_form, :identification_and_functionality, :features_and_benefits, :applications_and_uses,
             :properties, :regulatory_and_compliance, :regional_availability, :brand_id, :created_at, :updated_at

  attribute :storefront_name do |record|
    record.storefront_name
  end

  attribute :brand_name do |record|
    record.brand_name
  end
end
