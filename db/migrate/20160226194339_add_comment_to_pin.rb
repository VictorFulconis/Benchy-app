class AddCommentToPin < ActiveRecord::Migration
  def change
    add_column :pins, :comment, :string
  end
end
