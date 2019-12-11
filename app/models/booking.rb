class Booking < ApplicationRecord
  belongs_to :treatment
  belongs_to :customer, class_name: "User"
  monetize :price_cents
  validates :start_time, :end_time, presence: true
end
