class AddPhotoUrlToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :photo_url, :string
  end
end
