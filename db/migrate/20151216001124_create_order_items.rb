class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :dish, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
