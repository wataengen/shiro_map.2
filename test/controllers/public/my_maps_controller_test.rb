require "test_helper"

class Public::MyMapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_my_maps_index_url
    assert_response :success
  end
end
