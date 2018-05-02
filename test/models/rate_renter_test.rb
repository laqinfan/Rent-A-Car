# == Schema Information
#
# Table name: rate_renters
#
#  id          :integer          not null, primary key
#  rating      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  contract_id :integer
#  comment     :string
#
# Indexes
#
#  index_rate_renters_on_contract_id  (contract_id)
#

require 'test_helper'

class RateRenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
