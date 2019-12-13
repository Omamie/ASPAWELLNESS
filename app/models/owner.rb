class Owner < User
  has_many :centers, foreign_key: :owner_id, class_name: 'Center'
  has_many :treatments, through: :centers
  has_many :bookings, through: :treatments
end
