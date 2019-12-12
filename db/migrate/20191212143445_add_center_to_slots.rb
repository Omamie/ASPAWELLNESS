class AddCenterToSlots < ActiveRecord::Migration[5.2]
  def change
    add_reference :slots, :center, foreign_key: true
  end
end
