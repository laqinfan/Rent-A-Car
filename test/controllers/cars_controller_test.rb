require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    # @user = users(:one)
    # sign_in_as(@user)
    sign_in users(:one)
    @car = cars(:one)
    #sign_in_for(@car)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get browse" do
    get browse_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { category: @car.category, color: @car.color, description: @car.description, make: @car.make, mileage: @car.mileage, model: @car.model, number_of_seats: @car.number_of_seats, price_per_day: @car.price_per_day, year: @car.year, user_id: @car.owner.id } }
      puts assigns(:car).errors.full_messages
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should show car details" do
    get car_details_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { category: @car.category, color: @car.color, description: @car.description, make: @car.make, mileage: @car.mileage, model: @car.model, number_of_seats: @car.number_of_seats, price_per_day: @car.price_per_day, year: @car.year, user_id: @car.owner.id } }
    puts assigns(:car).errors.full_messages
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
