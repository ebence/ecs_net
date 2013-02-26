# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  mac_address       :string(255)
#  user_defined_name :string(255)
#  optional_link     :string(255)
#  product_type      :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  access_port       :string(255)
#

class Product < ActiveRecord::Base
  has_many :logs
  attr_accessible :mac_address, :optional_link, :product_type, :user_defined_name, :access_port

  def actual_ip_address
    logs.first.actual_ip_address
  end

  def link
    if !actual_ip_address.blank?
      "http://#{actual_ip_address}:#{access_port}"
    else
      optional_link
    end
  end
end
