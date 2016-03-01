class RemoveAddscreationtime < ActiveRecord::Migration
  def change
    remove_column :pins, :ads_creation_time, :datetime
  end
end
