class AddCustomerToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :customer_id, :integer, foreign_key: true
    add_index :bookings, :customer_id
  end
end
