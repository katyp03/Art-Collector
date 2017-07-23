class Sale < ApplicationRecord
  belongs_to :user
  has_many :sale_items
  has_many :items, through: :sale_items
  validates :phone_number, presence: true, format: /\A\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})\z/
end
