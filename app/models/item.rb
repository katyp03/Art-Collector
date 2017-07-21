class Item < ApplicationRecord
  enum size: [:Small, :Medium, :Large]
  enum status: [:Available, :Leased]
  belongs_to :artist
  has_many :appraisals
  has_many :sale_items
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  validates :status, presence: true, numericality: { in: 0..1 }
end
