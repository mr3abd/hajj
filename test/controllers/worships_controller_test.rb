require 'test_helper'

class WorshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worship = worships(:one)
  end

  test "should get index" do
    get worships_url
    assert_response :success
  end

  test "should get new" do
    get new_worship_url
    assert_response :success
  end

  test "should create worship" do
    assert_difference('Worship.count') do
      post worships_url, params: { worship: { days: @worship.days } }
    end

    assert_redirected_to worship_url(Worship.last)
  end

  test "should show worship" do
    get worship_url(@worship)
    assert_response :success
  end

  test "should get edit" do
    get edit_worship_url(@worship)
    assert_response :success
  end

  test "should update worship" do
    patch worship_url(@worship), params: { worship: { days: @worship.days } }
    assert_redirected_to worship_url(@worship)
  end

  test "should destroy worship" do
    assert_difference('Worship.count', -1) do
      delete worship_url(@worship)
    end

    assert_redirected_to worships_url
  end
end
