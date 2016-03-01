class AddAddscreationtimeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :ads_creation_time, :datetime
  end
end
