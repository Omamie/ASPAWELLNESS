class Treatment < ApplicationRecord
  belongs_to :center
  has_many :bookings
  has_many :photos, as: :imageable
  mount_uploaders :photos, PhotoUploader
  monetize :price_cents

  def self.search_by_name(query)
    where("name ILIKE ?", "#{query}%")
  end
end
