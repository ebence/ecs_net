class Product < ActiveRecord::Base
  attr_accessible :mac_address, :optional_link, :product_type, :user_defined_name
end
