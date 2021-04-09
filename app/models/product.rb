class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :resource, polymorphic: true
  belongs_to :brand

  delegate :name, to: :resource, prefix: :storefront
  delegate :name, to: :brand, prefix: true
end
