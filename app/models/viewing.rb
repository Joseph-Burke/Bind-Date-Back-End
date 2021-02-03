class Viewing < ApplicationRecord
  belongs_to :house
  belongs_to :user
  validates_associated :house
  validates_associated :user
  validates :when, presence: true
  validate :viewing_date_is_in_the_future

  def viewing_date_is_in_the_future
    errors.add(:when, "can't be in the past") if self.when.nil? || self.when <= Date.today
  end
end
