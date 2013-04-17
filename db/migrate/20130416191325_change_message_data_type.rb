class ChangeMessageDataType < ActiveRecord::Migration
  def up
    change_column :logs, :message_data, :text
  end

  def down
    change_column :logs, :message_data, :string
  end
end
