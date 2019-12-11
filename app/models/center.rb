class Center < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :treatments
  has_many :photos, as: :imageable
  mount_uploaders :photos, PhotoUploader
end
