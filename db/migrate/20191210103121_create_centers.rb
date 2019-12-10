class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :address
      t.string :contact_person
      t.references :treatment, foreign_key: true

      t.timestamps
    end
  end
end
