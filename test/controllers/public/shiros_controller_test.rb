require "test_helper"

class Public::ShirosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_shiros_index_url
    assert_response :success
  end

  test "should get show" do
    get public_shiros_show_url
    assert_response :success
  end
end
