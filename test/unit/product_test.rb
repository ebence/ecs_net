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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
