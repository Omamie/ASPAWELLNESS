class AddCenterReferencesToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_reference :treatments, :center, index: true, foreign_key: true
  end
end
