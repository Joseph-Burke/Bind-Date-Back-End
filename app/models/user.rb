class User < ApplicationRecord
  has_many :viewings
  validates :name, presence: true
  validates :email, presence: true
end
