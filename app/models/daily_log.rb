class DailyLog < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :calories_consumed, numericality: { greater_than: 0 }
  validates :weight, numericality: { greater_than: 0 }
end
