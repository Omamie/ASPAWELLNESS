class ChangePhotoUrlToAttachment < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :photo_url, :attachment
  end
end
