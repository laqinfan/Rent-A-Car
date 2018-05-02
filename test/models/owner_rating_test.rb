# == Schema Information
#
# Table name: owner_ratings
#
#  id          :integer          not null, primary key
#  rating      :integer
#  comment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  owner_id    :integer
#  contract_id :integer
#
# Indexes
#
#  index_owner_ratings_on_contract_id  (contract_id)
#  index_owner_ratings_on_owner_id     (owner_id)
#  index_owner_ratings_on_user_id      (user_id)
#

require 'test_helper'

class OwnerRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
