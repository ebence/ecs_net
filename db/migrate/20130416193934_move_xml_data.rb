class MoveXmlData < ActiveRecord::Migration
  def up
    add_column :products, :xml_data, :text
  end

  def down
    remove_column :products, :xml_data, :text
  end
end
