# == Schema Information
#
# Table name: cars
#
#  id              :integer          not null, primary key
#  make            :string
#  model           :string
#  year            :integer
#  color           :string
#  description     :string
#  category        :string
#  mileage         :string
#  number_of_seats :integer
#  price_per_day   :decimal(10, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address_id      :integer
#  user_id         :integer
#

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid car1" do
    test = cars(:one)
    assert test.valid?
  end

  test "valid car2" do
    test = cars(:two)
    assert test.valid?
  end

  # test "valid car3" do
  #   test = cars(:three)
  #   assert test.valid?
  # end
end
