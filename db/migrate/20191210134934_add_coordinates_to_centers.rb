class AddCoordinatesToCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :centers, :latitude, :float
    add_column :centers, :longitude, :float
  end
end
