class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :product
      t.string :actual_ip_address
      t.string :actual_port
      t.string :message_type
      t.string :message_data

      t.timestamps
    end
    add_index :logs, :product_id
  end
end
