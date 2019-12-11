class Booking < ApplicationRecord
  belongs_to :treatment
  belongs_to :user
end
