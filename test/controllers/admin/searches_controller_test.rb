require "test_helper"

class Admin::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get search_shiro_index" do
    get admin_searches_search_shiro_index_url
    assert_response :success
  end

  test "should get search_post_index" do
    get admin_searches_search_post_index_url
    assert_response :success
  end

  test "should get search_tag_index" do
    get admin_searches_search_tag_index_url
    assert_response :success
  end
end
