class DeleteScrappingparameters < ActiveRecord::Migration
  def change
    remove_column :competitors, :scraping_parameters, :text
  end
end
