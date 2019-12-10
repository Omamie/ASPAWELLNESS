class Treatment < ApplicationRecord
  belongs_to :center
  has_many :bookings
end
