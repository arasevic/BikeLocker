class CreateWorkDays < ActiveRecord::Migration
  def change
    create_table :work_days do |t|
      t.datetime :date
      t.float :available_man_hours
      t.float :scheduled_man_hours
      t.float :total_man_hours

      t.timestamps null: false
    end
  end
end
