class Viewing < ApplicationRecord
  belongs_to :house
  belongs_to :user
  validate :viewing_date_is_in_the_future

  def viewing_date_is_in_the_future
    errors.add(:when, "can't be in the past") if self.when <= Date.today
  end
end
