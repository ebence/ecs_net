class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :mac_address
      t.string :user_defined_name
      t.string :optional_link
      t.string :product_type

      t.timestamps
    end
  end
end
