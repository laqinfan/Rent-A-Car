# == Schema Information
#
# Table name: contracts
#
#  id               :integer          not null, primary key
#  start_date       :string
#  return_date      :string
#  price            :decimal(, )
#  subtotal         :decimal(, )
#  total            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  status           :string
#  string           :string
#  car_id           :integer
#  owner_paypal_id  :integer
#  renter_paypal_id :integer
#
# Indexes
#
#  index_contracts_on_car_id            (car_id)
#  index_contracts_on_owner_paypal_id   (owner_paypal_id)
#  index_contracts_on_renter_paypal_id  (renter_paypal_id)
#

#  paypal_id   :integer
#
# Indexes
#
#  index_contracts_on_car_id     (car_id)
#  index_contracts_on_paypal_id  (paypal_id)

#

require 'test_helper'

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #Test start date
  test "start_date should be of format YYYY-MM-DD" do
		two = contracts(:two)
		assert two.valid?, two.errors.full_messages.inspect
  end
  
	test "start_date should not be saved if it doesn't follow the format" do
		two = contracts(:two)
		two.start_date = "11/20/1991"
		assert_not two.valid?
  end
  
  #Test return_date
  test "return_date should be of format YYYY-MM-DD" do
		two = contracts(:two)
		assert two.valid?, two.errors.full_messages.inspect
  end
  
	test "return_date should not be saved if it doesn't follow the format" do
		two = contracts(:two)
		two.return_date = "11/20/1991"
		assert_not two.valid?
  end

  #Test price
  test "price should be present" do
		one = contracts(:one)
		assert one.valid?, one.errors.full_messages.inspect
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
