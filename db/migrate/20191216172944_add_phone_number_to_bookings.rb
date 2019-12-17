class AddPhoneNumberToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :phone_number, :string
  end
end
