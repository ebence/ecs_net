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
#  xml_data          :text
#

class Product < ActiveRecord::Base
  has_many :logs
  has_and_belongs_to_many :users
  attr_accessible :mac_address, :optional_link, :product_type, :user_defined_name, :access_port, :user_ids, :xml_data

  def actual_ip_address
    logs.first.actual_ip_address if logs.any?
  end

  def custom_key
    logs.first.custom_key if logs.any?
  end

  def redirect_url
    "http://#{actual_ip_address}:#{access_port}/login?mac_address=#{mac_address}&custom_key=#{custom_key}"
  end

  def inner_link
    "/"
  end

  def link
    if !actual_ip_address.blank?
      "http://#{actual_ip_address}:#{access_port}"
    else
      optional_link
    end
  end
end
