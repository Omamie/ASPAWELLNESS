class AddDescriptionToCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :centers, :description, :string
  end
end
