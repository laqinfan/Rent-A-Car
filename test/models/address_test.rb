#kbridson

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @address = Address.new(street1: "1672 Meadow Hill Rd")
  end

  #### street1 validations

  test "valid street1" do
    test = addresses(:one)
    test.street1 = "8745 Wilson St"
    assert test.valid?
  end

  test "invalid street1 length > 30" do
    test = addresses(:one)
    test.street1 = "11111111111111111111111111111111"
    assert_not test.valid?
  end

  test "invalid street1 uniqueness" do
    test = @address.dup
    assert_not test.valid?
  end

  test "invalid street1 presence" do
    test = addresses(:one)
    test.street1 = ""
    assert_not test.valid?
  end

  #### street2 validations

  test "valid street2" do
    test = addresses(:one)
    test.street2 = "PO Box 3145"
    assert test.valid?
  end

  test "valid street2 allow blank" do
    test = addresses(:one)
    test.street2 = ""
    assert test.valid?
  end

  test "invalid street2 length > 30" do
    test = addresses(:one)
    test.street2 = "11111111111111111111111111111111"
    assert_not test.valid?
  end

  #### city validations

  test "valid city" do
    test = addresses(:one)
    test.city = "Jacksonville"
    assert test.valid?
  end

  test "invalid city presence" do
    test = addresses(:one)
    test.city = ""
    assert_not test.valid?
  end

  #### state validations

  test "valid state" do
    test = addresses(:one)
    test.state = "FL"
    assert test.valid?
  end

  test "invalid state presence" do
    test = addresses(:one)
    test.state = ""
    assert_not test.valid?
  end

  test "invalid state length not equal 2" do
    test = addresses(:one)
    test.state = "USA"
    assert_not test.valid?
  end

  #### zipcode validations

  test "valid zipcode" do
    test = addresses(:one)
    test.zipcode = "38016"
    assert test.valid?
  end

  test "invalid zipcode presence" do
    test = addresses(:one)
    test.zipcode = ""
    assert_not test.valid?
  end

  test "invalid zipcode length not equal 5" do
    test = addresses(:one)
    test.zipcode = "111111"
    assert_not test.valid?
  end

end
