class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :address
      t.string :contact_person


      t.timestamps
    end
  end
end
