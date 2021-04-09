class Brand < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :products, dependent: :destroy
  belongs_to :resource, polymorphic: true
end
