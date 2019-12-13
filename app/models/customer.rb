class Customer < User
  has_many :bookings, foreign_key: :customer_id, class_name: 'Booking'
end
