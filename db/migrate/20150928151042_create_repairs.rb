class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :service_requested
      t.datetime :date_scheduled
      t.datetime :date_completed
      t.string :performed_by
      t.boolean :is_finished
      t.text :notes
      t.references :bicycle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
