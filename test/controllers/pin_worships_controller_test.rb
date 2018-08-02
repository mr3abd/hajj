require 'test_helper'

class PinWorshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pin_worship = pin_worships(:one)
  end

  test "should get index" do
    get pin_worships_url
    assert_response :success
  end

  test "should get new" do
    get new_pin_worship_url
    assert_response :success
  end

  test "should create pin_worship" do
    assert_difference('PinWorship.count') do
      post pin_worships_url, params: { pin_worship: { img_url: @pin_worship.img_url, info_text: @pin_worship.info_text, lat: @pin_worship.lat, lng: @pin_worship.lng, title: @pin_worship.title } }
    end

    assert_redirected_to pin_worship_url(PinWorship.last)
  end

  test "should show pin_worship" do
    get pin_worship_url(@pin_worship)
    assert_response :success
  end

  test "should get edit" do
    get edit_pin_worship_url(@pin_worship)
    assert_response :success
  end

  test "should update pin_worship" do
    patch pin_worship_url(@pin_worship), params: { pin_worship: { img_url: @pin_worship.img_url, info_text: @pin_worship.info_text, lat: @pin_worship.lat, lng: @pin_worship.lng, title: @pin_worship.title } }
    assert_redirected_to pin_worship_url(@pin_worship)
  end

  test "should destroy pin_worship" do
    assert_difference('PinWorship.count', -1) do
      delete pin_worship_url(@pin_worship)
    end

    assert_redirected_to pin_worships_url
  end
end
