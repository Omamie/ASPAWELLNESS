class Photo < ApplicationRecord
  belongs_to :imageable, polymorphic: true, required: false
  has_attached_file :image
end
