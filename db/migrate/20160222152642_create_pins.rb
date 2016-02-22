class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.references :dashboard, index: true, foreign_key: true
      t.references :ad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
