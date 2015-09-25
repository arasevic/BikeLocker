class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.boolean :finished
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
