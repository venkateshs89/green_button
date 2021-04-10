class BasicStorefrontDetailsSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :created_at, :updated_at
end
