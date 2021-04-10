class BrandSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :resource_id, :resource_type, :created_at, :updated_at

  attribute :products do |record|
    BasicProductDetailsSerializer.new(record.products).to_h
  end
end
