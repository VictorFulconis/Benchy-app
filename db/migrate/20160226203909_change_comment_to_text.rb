class ChangeCommentToText < ActiveRecord::Migration
  def change
    change_column :pins, :comment, :text
  end
end
