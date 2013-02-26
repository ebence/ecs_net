# == Schema Information
#
# Table name: logs
#
#  id                :integer          not null, primary key
#  product_id        :integer
#  actual_ip_address :string(255)
#  message_type      :string(255)
#  message_data      :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class LogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
