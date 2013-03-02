class CreateTableProductsUsers < ActiveRecord::Migration
  def up
    create_table :products_users, :id => false do |t|
      t.references :product, :user
    end
  end

  def down
    drop_table :products_users
  end
end
