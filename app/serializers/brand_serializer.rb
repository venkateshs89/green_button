class BrandSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :resource_id, :resource_type, :created_at, :updated_at
end
