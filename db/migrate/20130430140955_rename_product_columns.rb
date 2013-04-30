class RenameProductColumns < ActiveRecord::Migration
  def up
    rename_column :devices, :product_type, :device_type
    rename_column :devices_users, :product_id, :device_id
    rename_column :logs, :product_id, :device_id
  end

  def down
    rename_column :devices, :device_type, :product_type
    rename_column :devices_users, :device_id, :product_id
    rename_column :logs, :device_id, :product_id
  end
end
