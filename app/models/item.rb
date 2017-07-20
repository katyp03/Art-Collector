class Item < ApplicationRecord
  belongs_to :artist
  has_many :appraisals
  has_many :sale_items
end
