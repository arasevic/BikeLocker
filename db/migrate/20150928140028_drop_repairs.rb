class DropRepairs < ActiveRecord::Migration
  def change
  	drop_table :repairs
  end
end
