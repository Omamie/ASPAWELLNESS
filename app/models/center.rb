class Center < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :treatments
  has_many :bookings, through: :treatments
  has_many :reviews, through: :bookings

  belongs_to :owner, class_name: 'User'
  has_many :photos, as: :imageable
  # accepts_nested_attributes_for :photos


  def no_of_reviews
    amount = rand(2..30)
  end
end
