class Booking < ApplicationRecord
  belongs_to :treatment
  belongs_to :customer, class_name: "User"
  monetize :price_cents
end
