class DropWorkDays < ActiveRecord::Migration
  def change
  	drop_table :work_days
  end
end
