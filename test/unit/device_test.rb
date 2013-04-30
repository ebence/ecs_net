# == Schema Information
#
# Table name: devices
#
#  id                :integer          not null, primary key
#  mac_address       :string(255)
#  user_defined_name :string(255)
#  optional_link     :string(255)
#  device_type      :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  access_port       :string(255)
#  xml_data          :text
#

require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
