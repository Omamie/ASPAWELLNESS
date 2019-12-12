class Slot < ApplicationRecord
  belongs_to :center

  DAYS = (1..7)
end
