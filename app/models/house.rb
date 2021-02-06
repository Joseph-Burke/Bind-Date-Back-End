class House < ApplicationRecord
  has_many :viewings
  has_one_attached :picture
  validates :location, presence: true
  validates :description, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
end
