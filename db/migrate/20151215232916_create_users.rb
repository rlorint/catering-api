class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :pass
      t.string :adresa
      t.string :telefon

      t.timestamps null: false
    end
  end
end
