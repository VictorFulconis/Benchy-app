class AddMaincommentsToDashboard < ActiveRecord::Migration
  def change
    add_column :dashboards, :main_comments, :text
  end
end
