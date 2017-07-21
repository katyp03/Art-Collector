class Sale < ApplicationRecord
  belongs_to :user
  has_many :sale_items
  has_many :items, through: :sale_items
end
