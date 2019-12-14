class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :treatment, foreign_key: true
      t.integer :price_cents
      t.integer :group_size
      t.integer :status, default: 0, null: false
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
