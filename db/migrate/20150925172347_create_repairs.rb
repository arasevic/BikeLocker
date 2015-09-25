class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :labor_type
      t.float :man_hours
      t.float :cost

      t.timestamps null: false
    end
  end
end
