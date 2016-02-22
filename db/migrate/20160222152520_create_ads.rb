class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :url
      t.references :competitor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
