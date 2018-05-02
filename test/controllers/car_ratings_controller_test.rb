require 'test_helper'

class CarRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_rating = car_ratings(:one)
  end

  test "should get index" do
    get car_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_car_rating_url
    assert_response :success
  end

  test "should create car_rating" do
    assert_difference('CarRating.count') do
      post car_ratings_url, params: { car_rating: {  } }
    end

    assert_redirected_to car_rating_url(CarRating.last)
  end

  test "should show car_rating" do
    get car_rating_url(@car_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_rating_url(@car_rating)
    assert_response :success
  end

  test "should update car_rating" do
    patch car_rating_url(@car_rating), params: { car_rating: {  } }
    assert_redirected_to car_rating_url(@car_rating)
  end

  test "should destroy car_rating" do
    assert_difference('CarRating.count', -1) do
      delete car_rating_url(@car_rating)
    end

    assert_redirected_to car_ratings_url
  end
end
