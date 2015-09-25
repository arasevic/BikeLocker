class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :stree_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
