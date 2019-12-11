class Center < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :treatments
  belongs_to :owner
  has_many :photos, as: :imageable
  accepts_nested_attributes_for :photos
end
