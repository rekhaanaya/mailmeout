require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get Connect" do
    get :Connect
    assert_response :success
  end

  test "should get Discover" do
    get :Discover
    assert_response :success
  end

  test "should get Me" do
    get :Me
    assert_response :success
  end

end
