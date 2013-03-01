class AddRoomsToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :rooms, :integer
  end
end
