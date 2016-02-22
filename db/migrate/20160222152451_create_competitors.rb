class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      t.string :url
      t.text :scraping_parameters

      t.timestamps null: false
    end
  end
end
