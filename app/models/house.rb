class House < ApplicationRecord
  has_many :viewings
  has_one_attached :picture
end
