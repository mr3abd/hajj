require 'test_helper'

class PinpinPinWorshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pinpin_pin_worshop = pinpin_pin_worshops(:one)
  end

  test "should get index" do
    get pinpin_pin_worshops_url
    assert_response :success
  end

  test "should get new" do
    get new_pinpin_pin_worshop_url
    assert_response :success
  end

  test "should create pinpin_pin_worshop" do
    assert_difference('PinpinPinWorshop.count') do
      post pinpin_pin_worshops_url, params: { pinpin_pin_worshop: { text: @pinpin_pin_worshop.text } }
    end

    assert_redirected_to pinpin_pin_worshop_url(PinpinPinWorshop.last)
  end

  test "should show pinpin_pin_worshop" do
    get pinpin_pin_worshop_url(@pinpin_pin_worshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_pinpin_pin_worshop_url(@pinpin_pin_worshop)
    assert_response :success
  end

  test "should update pinpin_pin_worshop" do
    patch pinpin_pin_worshop_url(@pinpin_pin_worshop), params: { pinpin_pin_worshop: { text: @pinpin_pin_worshop.text } }
    assert_redirected_to pinpin_pin_worshop_url(@pinpin_pin_worshop)
  end

  test "should destroy pinpin_pin_worshop" do
    assert_difference('PinpinPinWorshop.count', -1) do
      delete pinpin_pin_worshop_url(@pinpin_pin_worshop)
    end

    assert_redirected_to pinpin_pin_worshops_url
  end
end
