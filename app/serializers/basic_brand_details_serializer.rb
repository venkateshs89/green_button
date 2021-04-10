class BasicBrandDetailsSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :resource_id, :resource_type
end
