class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :price
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
