require 'test_helper'

class Api::TaskboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_taskboards_index_url
    assert_response :success
  end

  test "should get show" do
    get api_taskboards_show_url
    assert_response :success
  end

  test "should get create" do
    get api_taskboards_create_url
    assert_response :success
  end

  test "should get update" do
    get api_taskboards_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_taskboards_destroy_url
    assert_response :success
  end

end
