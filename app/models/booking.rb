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
      self.start_time == other_booking.start_time && self.end_time == other_booking.end_time
    end
    errors.add(:start_time, ("booking overlaps")) if is_overlapping
  end
end
