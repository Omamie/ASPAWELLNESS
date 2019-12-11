class RemovePhotoFromTreatments < ActiveRecord::Migration[5.2]
  def change
    remove_column :treatments, :photo
  end
end
