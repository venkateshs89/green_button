class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :resource, polymorphic: true
  belongs_to :brand
end
