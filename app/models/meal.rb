class Meal < ApplicationRecord
  belongs_to :user

  validates :name, format: { with: /\A[a-zA-Z0-9_ -]+\z/, message: "cannot contain symbols" }
  validates :calories, numericality: { only_integer: true }

  def self.by_user(user_id)
    where(user: user_id)
  end

  def self.from_today
    where("created_at >=?", Time.zone.today.beginning_of_day)
  end

  def self.old_meals
    where("created_at <?", Time.zone.today.beginning_of_day)
  end
end
