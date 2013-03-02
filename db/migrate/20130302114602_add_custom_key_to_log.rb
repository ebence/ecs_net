class AddCustomKeyToLog < ActiveRecord::Migration
  def change
    add_column :logs, :custom_key, :string
  end
end
