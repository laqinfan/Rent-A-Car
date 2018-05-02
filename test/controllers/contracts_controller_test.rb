require 'test_helper'

class ContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    @car = cars(:one)
    @contract = contracts(:one)
  end

  test "should get index" do
    get contracts_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_contract_url(@car)
  #   assert_response :success
  # end

  test "should create contract" do
    assert_difference('Contract.count') do
      post contracts_url, params: { contract: { price: @contract.price, return_date: @contract.return_date, start_date: @contract.start_date, subtotal: @contract.subtotal, total: @contract.total, car_id: @contract.car.id, owner_paypal_id: @contract.owner_paypal.id, renter_paypal_id: @contract.renter_paypal.id } }
      puts assigns(:contract).errors.full_messages
    end

    assert_redirected_to browse_vehicles_url
  end

  test "should show contract" do
    get contract_url(@contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_url(@contract)
    assert_response :success
  end

  test "should update contract" do
    patch contract_url(@contract), params: { contract: { price: @contract.price, return_date: @contract.return_date, start_date: @contract.start_date, subtotal: @contract.subtotal, total: @contract.total, car_id: @contract.car.id, owner_paypal_id: @contract.owner_paypal.id, renter_paypal_id: @contract.renter_paypal.id } }
    assert_redirected_to contract_url(@contract)
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete contract_url(@contract)
    end

    assert_redirected_to my_contracts_url
  end
end
