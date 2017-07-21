class Appraisal < ApplicationRecord
  enum condition: [:Mint, :Good, :Average, :Damaged]
  belongs_to :item
  validates :condition, presence: true, numericality: { in: 0..3 }
end
