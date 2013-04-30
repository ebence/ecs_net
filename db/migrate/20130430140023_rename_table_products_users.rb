class RenameTableProductsUsers < ActiveRecord::Migration
  def up
    rename_table :products_users, :devices_users
  end

  def down
    rename_table :devices_users, :products_users
  end
end
