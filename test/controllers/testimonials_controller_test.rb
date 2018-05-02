require 'test_helper'

class TestimonialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    @testimonial = testimonials(:one)
  end

  test "should get index" do
    get testimonials_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonial_url
    #assert_response :success
    assert_redirected_to root_url
  end

  test "should create testimonial" do
    assert_difference('Testimonial.count') do
      post testimonials_url, params: { testimonial: { comment: @testimonial.comment } }
      puts assigns(:testimonial).errors.full_messages
    end

    assert_redirected_to root_url
  end

  test "should show testimonial" do
    get testimonial_url(@testimonial)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonial_url(@testimonial)
    assert_response :success
  end

  test "should update testimonial" do
    patch testimonial_url(@testimonial), params: { testimonial: { comment: @testimonial.comment } }
    assert_redirected_to testimonial_url(@testimonial)
  end

  test "should destroy testimonial" do
    assert_difference('Testimonial.count', -1) do
      delete testimonial_url(@testimonial)
    end

    assert_redirected_to my_testimonial_url
  end
end
