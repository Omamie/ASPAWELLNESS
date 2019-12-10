class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.string :name
      t.text :description
      t.integer :price_cents
      t.string :category
      t.string :photo
      t.integer :capacity_per_hour
      t.integer :duration
      # t.references :center, foreign_key: true

      t.timestamps
    end
  end
end
