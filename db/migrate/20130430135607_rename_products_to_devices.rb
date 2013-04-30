class RenameProductsToDevices < ActiveRecord::Migration
  def up
    rename_table :products, :devices
  end

  def down
    rename_table :devices, :products
  end
end
