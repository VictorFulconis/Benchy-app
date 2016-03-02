class AddScrapperClassToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :scrapper_class, :string
  end
end
