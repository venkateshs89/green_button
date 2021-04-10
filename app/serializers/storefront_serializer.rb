class StorefrontSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :slug, :created_at, :updated_at

  attribute :brands do |record|
    BasicBrandDetailsSerializer.new(record.brands).to_h
  end
end
