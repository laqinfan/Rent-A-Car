# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  status           :string
#  address_id       :integer
#  addressable_type :string
#  addressable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_locations_on_address_id                           (address_id)
#  index_locations_on_addressable_type_and_addressable_id  (addressable_type,addressable_id)
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
