class Photo < ApplicationRecord
  has_attached_file :img
    validates_attachment :img, content_type: { content_type:
    ["image/jpg",
    "image/jpeg", "image/png", "image/gif"] }

  belongs_to :imageable, polymorphic: true, required: false
end
