# == Schema Information
#
# Table name: logs
#
#  id                :integer          not null, primary key
#  device_id        :integer
#  actual_ip_address :string(255)
#  message_type      :string(255)
#  message_data      :text(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  custom_key        :string(255)
#

require 'test_helper'

class LogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
