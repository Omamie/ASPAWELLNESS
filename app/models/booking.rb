class Booking < ApplicationRecord
  belongs_to :treatment
  belongs_to :customer, class_name: "User"
  has_many :reviews

  enum status: [:Pending, :Confirmed, :Cancelled]
  monetize :price_cents

  validates :start_time, presence: true
  # validate :validate_other_booking_overlap

  def end_time
    start_time + treatment.duration.minutes
  end

  # {
  #      title  : 'event2',
  #      start  : '2019-01-05',
  #      end    : '2019-01-07'
  #    }
  def to_event
    {
      title: "#{customer.first_name} #{customer.last_name.upcase} - #{treatment.name} - ",
      start: start_time,
      end: end_time
    }
  end
end
