class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :center, foreign_key: true
      t.integer :weekday

      t.timestamps
    end
  end
end
