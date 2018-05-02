# == Schema Information
#
# Table name: car_ratings
#
#  id          :integer          not null, primary key
#  rating      :integer
#  comments    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  car_id      :integer
#  user_id     :integer
#  contract_id :integer
#
# Indexes
#
#  index_car_ratings_on_car_id       (car_id)
#  index_car_ratings_on_contract_id  (contract_id)
#  index_car_ratings_on_user_id      (user_id)
#

require 'test_helper'

class CarRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
