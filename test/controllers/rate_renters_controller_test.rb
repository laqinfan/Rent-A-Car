require 'test_helper'

class RateRentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rate_renter = rate_renters(:one)
  end

  test "should get index" do
    get rate_renters_url
    assert_response :success
  end

  test "should get new" do
    get new_rate_renter_url
    assert_response :success
  end

  test "should create rate_renter" do
    assert_difference('RateRenter.count') do
      post rate_renters_url, params: { rate_renter: {  } }
    end

    assert_redirected_to rate_renter_url(RateRenter.last)
  end

  test "should show rate_renter" do
    get rate_renter_url(@rate_renter)
    assert_response :success
  end

  test "should get edit" do
    get edit_rate_renter_url(@rate_renter)
    assert_response :success
  end

  test "should update rate_renter" do
    patch rate_renter_url(@rate_renter), params: { rate_renter: {  } }
    assert_redirected_to rate_renter_url(@rate_renter)
  end

  test "should destroy rate_renter" do
    assert_difference('RateRenter.count', -1) do
      delete rate_renter_url(@rate_renter)
    end

    assert_redirected_to rate_renters_url
  end
end
