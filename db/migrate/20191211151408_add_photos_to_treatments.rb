class AddPhotosToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_reference :treatments, :imageable, polymorphic: true
  end
end
