class Log < ActiveRecord::Base
  belongs_to :product
  attr_accessible :actual_ip_address, :actual_port, :message_data, :message_type, :product_id
  default_scope order('created_at DESC')
end
