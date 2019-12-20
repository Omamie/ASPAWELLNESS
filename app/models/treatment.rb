class Treatment < ApplicationRecord
  belongs_to :center
  has_many :bookings, dependent: :destroy
  has_many :photos, as: :imageable
  monetize :price_cents

  accepts_nested_attributes_for :photos

  def self.search_by_name(query)
    where("name ILIKE ?", "#{query}%")
  end
end
