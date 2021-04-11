class Brand < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :products, dependent: :destroy
  belongs_to :resource, polymorphic: true

  delegate :slug, to: :resource, prefix: :storefront
end
