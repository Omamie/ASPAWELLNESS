class Photo < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  mount_uploader :attachment, PhotoUploader
end
