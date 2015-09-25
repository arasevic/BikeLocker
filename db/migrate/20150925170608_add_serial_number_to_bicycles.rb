class AddSerialNumberToBicycles < ActiveRecord::Migration
  def change
    add_column :bicycles, :serial_number, :string
  end
end
