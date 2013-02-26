class MoveActualPort < ActiveRecord::Migration
  def up
    remove_column :logs, :actual_port
    add_column :products, :access_port, :string
  end

  def down
    remove_column :products, :access_port, :string
    add_column :logs, :actual_port, :string
  end
end
