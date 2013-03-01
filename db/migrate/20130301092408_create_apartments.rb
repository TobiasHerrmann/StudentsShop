class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :adress
      t.integer :area
      t.text :description
      t.string :category
      t.string :owner
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
