class Product < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01} 
  validates :image, content_type: ["image/png", "image/jpg", "image/jpeg", "image/gif"]
end
