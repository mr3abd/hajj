require 'test_helper'

class PinpinPinWorshopssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pinpin_pin_worshopss = pinpin_pin_worshopsses(:one)
  end

  test "should get index" do
    get pinpin_pin_worshopsses_url
    assert_response :success
  end

  test "should get new" do
    get new_pinpin_pin_worshopss_url
    assert_response :success
  end

  test "should create pinpin_pin_worshopss" do
    assert_difference('PinpinPinWorshopss.count') do
      post pinpin_pin_worshopsses_url, params: { pinpin_pin_worshopss: { text: @pinpin_pin_worshopss.text } }
    end

    assert_redirected_to pinpin_pin_worshopss_url(PinpinPinWorshopss.last)
  end

  test "should show pinpin_pin_worshopss" do
    get pinpin_pin_worshopss_url(@pinpin_pin_worshopss)
    assert_response :success
  end

  test "should get edit" do
    get edit_pinpin_pin_worshopss_url(@pinpin_pin_worshopss)
    assert_response :success
  end

  test "should update pinpin_pin_worshopss" do
    patch pinpin_pin_worshopss_url(@pinpin_pin_worshopss), params: { pinpin_pin_worshopss: { text: @pinpin_pin_worshopss.text } }
    assert_redirected_to pinpin_pin_worshopss_url(@pinpin_pin_worshopss)
  end

  test "should destroy pinpin_pin_worshopss" do
    assert_difference('PinpinPinWorshopss.count', -1) do
      delete pinpin_pin_worshopss_url(@pinpin_pin_worshopss)
    end

    assert_redirected_to pinpin_pin_worshopsses_url
  end
end
