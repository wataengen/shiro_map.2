require "test_helper"

class Public::PostFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_favorites_index_url
    assert_response :success
  end
end
