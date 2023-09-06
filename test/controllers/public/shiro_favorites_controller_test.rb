require "test_helper"

class Public::ShiroFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_shiro_favorites_index_url
    assert_response :success
  end
end
