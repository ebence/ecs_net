# == Schema Information
#
# Table name: logs
#
#  id                :integer          not null, primary key
#  product_id        :integer
#  actual_ip_address :string(255)
#  message_type      :string(255)
#  message_data      :text(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  custom_key        :string(255)
#

class Log < ActiveRecord::Base
  belongs_to :product
  attr_accessible :actual_ip_address, :actual_port, :message_data, :message_type, :product_id, :custom_key
  default_scope order('created_at DESC')

  scope :type_is_xml, where(:message_type => "xml")
end
