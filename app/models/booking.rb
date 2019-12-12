class Booking < ApplicationRecord
  belongs_to :treatment
  belongs_to :customer, class_name: "User"
  monetize :price_cents
  validates :start_time, :end_time, presence: true
  validate :validate_other_booking_overlap

  private

  def validate_other_booking_overlap
    other_bookings = Booking.where(treatment: self.treatment)
    is_overlapping = other_bookings.any? do |other_booking|
      self.datetime == other_booking.datetime
    end
    errors.add(:datetime, ("booking overlaps")) if is_overlapping
  end
end
