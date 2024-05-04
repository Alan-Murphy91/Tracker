class User < ApplicationRecord
  # Add validations to ensure data integrity
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_many :daily_logs, dependent: :destroy
end
