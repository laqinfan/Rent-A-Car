require 'test_helper'

class OwnerRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner_rating = owner_ratings(:one)
  end

  test "should get index" do
    get owner_ratings_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_owner_rating_url
  #   assert_response :success
  # end

  test "should create owner_rating" do
    assert_difference('OwnerRating.count') do
      post owner_ratings_url, params: { owner_rating: { rating: @owner_rating.rating, comment: @owner_rating.comment, owner_id: @owner_rating.owner.id, user_id: @owner_rating.user.id, contract_id: @owner_rating.contract.id } }
    end

    assert_redirected_to owner_rating_url(OwnerRating.last)
  end

  test "should show owner_rating" do
    get owner_rating_url(@owner_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_owner_rating_url(@owner_rating)
    assert_response :success
  end

  test "should update owner_rating" do
    patch owner_rating_url(@owner_rating), params: { owner_rating: { rating: @owner_rating.rating, comment: @owner_rating.comment, owner_id: @owner_rating.owner.id, user_id: @owner_rating.user.id, contract_id: @owner_rating.contract.id } }
    assert_redirected_to owner_rating_url(@owner_rating)
  end

  test "should destroy owner_rating" do
    assert_difference('OwnerRating.count', -1) do
      delete owner_rating_url(@owner_rating)
    end

    assert_redirected_to owner_ratings_url
  end
end
