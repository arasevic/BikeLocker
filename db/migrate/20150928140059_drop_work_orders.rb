class DropWorkOrders < ActiveRecord::Migration
  def change
  	drop_table :work_orders
  end
end
