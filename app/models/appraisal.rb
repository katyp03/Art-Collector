class Appraisal < ApplicationRecord
  belongs_to :item
  validates :condition, presence: true, numericality: { in: 0..3 }
end
