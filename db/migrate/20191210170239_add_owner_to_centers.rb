class AddOwnerToCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :centers, :owner_id, :integer, foreign_key: true
    add_index :centers, :owner_id
  end
end
