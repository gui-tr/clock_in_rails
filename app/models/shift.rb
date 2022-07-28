class Shift < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  scope :having_date_between, ->(start_date, end_date) { where(date: start_date..end_date) }
end
