class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :f_name
      t.string :l_name
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
