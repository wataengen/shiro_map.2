require "test_helper"

class Admin::ShirosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_shiros_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_shiros_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_shiros_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_shiros_edit_url
    assert_response :success
  end
end
