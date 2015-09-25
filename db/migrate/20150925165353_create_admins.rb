class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :f_name
      t.string :l_name
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
