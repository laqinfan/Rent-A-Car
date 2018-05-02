# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  start      :string
#  end        :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  car_id     :integer
#
# Indexes
#
#  index_availabilities_on_car_id  (car_id)
#

require 'test_helper'

class AvailabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
