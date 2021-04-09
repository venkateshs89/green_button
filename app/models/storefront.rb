class Storefront < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :brands, as: :resource, dependent: :destroy
  has_many :products, as: :resource, dependent: :destroy
end
