class RenameUrlIntoCloudinaryPublicIdForAds < ActiveRecord::Migration
  def change
    rename_column :ads, :url, :cloudinary_public_id
  end
end
