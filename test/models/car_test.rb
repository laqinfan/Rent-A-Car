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
#  user_id         :integer
#
# Indexes
#
#  index_cars_on_user_id  (user_id)
#

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @address = Address.new(street1: "1672 Meadow Hill Rd")
  end

  #### test fixtures

  test "valid car1" do
    test = cars(:one)
    assert test.valid?
  end

  test "valid car2" do
    test = cars(:two)
    assert test.valid?
  end

  test "valid car3" do
    test = cars(:three)
    assert test.valid?
  end

  #### make validations

  test "valid make" do
    test = cars(:one)
    test.make = "Subaru"
    assert test.valid?
  end

  test "invalid make presence" do
    test = cars(:one)
    test.make = ""
    assert_not test.valid?
  end

  #### model validations

  test "valid model" do
    test = cars(:one)
    test.model = "Outback"
    assert test.valid?
  end

  test "invalid model presence" do
    test = cars(:one)
    test.model = ""
    assert_not test.valid?
  end

  #### year validations

  test "valid year" do
    test = cars(:one)
    test.year = 2014
    assert test.valid?
  end

  test "invalid year presence" do
    test = cars(:one)
    test.year = ""
    assert_not test.valid?
  end

  test "invalid year text" do
    test = cars(:one)
    test.year = "dfg"
    assert_not test.valid?
  end

  test "invalid year float" do
    test = cars(:one)
    test.year = 2014.7
    assert_not test.valid?
  end

  test "invalid year < 1900" do
    test = cars(:one)
    test.year = 1854
    assert_not test.valid?
  end

  test "invalid year > current year + 1" do
    test = cars(:one)
    test.year = Date.current.year + 2
    assert_not test.valid?
  end

  #### color validations

  test "valid color" do
    test = cars(:one)
    test.color = "hot pink"
    assert test.valid?
  end

  test "invalid color presence" do
    test = cars(:one)
    test.color = ""
    assert_not test.valid?
  end

  #### description validations

  test "valid description" do
    test = cars(:one)
    test.description = "This is my car and it is the best!"
    assert test.valid?
  end

  test "invalid description presence" do
    test = cars(:one)
    test.description = ""
    assert_not test.valid?
  end

  #### category validations

  test "valid category" do
    test = cars(:one)
    test.category = "Truck"
    assert test.valid?
  end

  test "invalid category presence" do
    test = cars(:one)
    test.category = ""
    assert_not test.valid?
  end
  
  test "invalid category inclusion" do
    test = cars(:one)
    test.category = "POS"
    assert_not test.valid?
  end

  #### mileage validations

  test "valid mileage" do
    test = cars(:one)
    test.mileage = 75000
    assert test.valid?
  end

  test "invalid mileage presence" do
    test = cars(:one)
    test.mileage = ""
    assert_not test.valid?
  end

  test "invalid mileage text" do
    test = cars(:one)
    test.mileage = "dfg"
    assert_not test.valid?
  end

  test "invalid mileage float" do
    test = cars(:one)
    test.mileage = 4567.7
    assert_not test.valid?
  end

  test "invalid mileage < 0" do
    test = cars(:one)
    test.mileage = -5000
    assert_not test.valid?
  end

  test "invalid mileage > 300000" do
    test = cars(:one)
    test.mileage = 500000
    assert_not test.valid?
  end

  #### number_of_seats validations

  test "valid number_of_seats" do
    test = cars(:one)
    test.number_of_seats = 4
    assert test.valid?
  end

  test "invalid number_of_seats presence" do
    test = cars(:one)
    test.number_of_seats = ""
    assert_not test.valid?
  end

  test "invalid number_of_seats text" do
    test = cars(:one)
    test.number_of_seats = "dfg"
    assert_not test.valid?
  end

  test "invalid number_of_seats float" do
    test = cars(:one)
    test.number_of_seats = 3.5
    assert_not test.valid?
  end

  test "invalid number_of_seats < 0" do
    test = cars(:one)
    test.number_of_seats = -5
    assert_not test.valid?
  end

  test "invalid number_of_seats > 7" do
    test = cars(:one)
    test.number_of_seats = 8
    assert_not test.valid?
  end

  #### price_per_day validations

  test "valid price_per_day" do
    test = cars(:one)
    test.price_per_day = 39.99
    assert test.valid?
  end

  test "invalid price_per_day presence" do
    test = cars(:one)
    test.price_per_day = ""
    assert_not test.valid?
  end

  test "invalid price_per_day format text" do
    test = cars(:one)
    test.price_per_day = "gkljdk"
    assert_not test.valid?
  end

  test "invalid price_per_day = 0" do
    test = cars(:one)
    test.price_per_day = 0
    assert_not test.valid?
  end

  test "invalid price_per_day < 0" do
    test = cars(:one)
    test.price_per_day = -5
    assert_not test.valid?
  end

  test "invalid price_per_day > 10000" do
    test = cars(:one)
    test.price_per_day = 9999999.99
    assert_not test.valid?
  end

end
