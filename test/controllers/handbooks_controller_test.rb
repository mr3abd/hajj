require 'test_helper'

class HandbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handbook = handbooks(:one)
  end

  test "should get index" do
    get handbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_handbook_url
    assert_response :success
  end

  test "should create handbook" do
    assert_difference('Handbook.count') do
      post handbooks_url, params: { handbook: { description: @handbook.description, icon_url: @handbook.icon_url, title: @handbook.title } }
    end

    assert_redirected_to handbook_url(Handbook.last)
  end

  test "should show handbook" do
    get handbook_url(@handbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_handbook_url(@handbook)
    assert_response :success
  end

  test "should update handbook" do
    patch handbook_url(@handbook), params: { handbook: { description: @handbook.description, icon_url: @handbook.icon_url, title: @handbook.title } }
    assert_redirected_to handbook_url(@handbook)
  end

  test "should destroy handbook" do
    assert_difference('Handbook.count', -1) do
      delete handbook_url(@handbook)
    end

    assert_redirected_to handbooks_url
  end
end
