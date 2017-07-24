class Appraisal < ApplicationRecord
  enum condition: [:Mint, :Good, :Average, :Damaged]
  belongs_to :item
  validates :condition, presence: true
  validates :value, presence: true, numericality: { greater_than: 0 }
end
