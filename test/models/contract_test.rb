# == Schema Information
#
# Table name: contracts
#
#  id          :integer          not null, primary key
#  start_date  :string
#  return_date :string
#  price       :float
#  subtotal    :float
#  total       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :string
#  string      :string
#  car_id      :integer
#
# Indexes
#
#  index_contracts_on_car_id  (car_id)
#

require 'test_helper'

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #Test start date
  test "start_date should be of format YYYY-MM-DD" do
		two = contracts(:two)
		assert two.valid?
  end
  
	test "start_date should not be saved if it doesn't follow the format" do
		two = contracts(:two)
		two.start_date = "1999/11/11"
		assert_not two.valid?
  end
  
  #Test end date
  test "start_date should be of format YYYY-MM-DD" do
		two = contracts(:two)
		assert two.valid?
  end
  
	test "start_date should not be saved if it doesn't follow the format" do
		two = contracts(:two)
		two.start_date = "1999/11/11"
		assert_not two.valid?
  end

  #Test price
  test "price should be present" do
		one = contracts(:one)
		assert one.valid?
  end
  
  test "price is valid" do
    one = contracts(:one)
    one.price = 12.0
    assert(one.price)
  end

  test "price is invalid" do
    one = contracts(:one)
    one.price = -1
    assert_not one.valid?
  end

end
