class Treatment < ApplicationRecord
  belongs_to :center
  has_many :bookings
  has_many :photos, as: :imageable
  mount_uploaders :photos, PhotoUploader
  monetize :price_cents
end
