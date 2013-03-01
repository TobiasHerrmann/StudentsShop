class CreateOfferMessages < ActiveRecord::Migration
  def change
    create_table :offer_messages do |t|
      t.string :name
      t.string :email
      t.string :betreff
      t.text :message

      t.timestamps
    end
  end
end
