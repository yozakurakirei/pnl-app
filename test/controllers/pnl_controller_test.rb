require "test_helper"

class PnlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pnl_index_url
    assert_response :success
  end

  test "should get show" do
    get pnl_show_url
    assert_response :success
  end

  test "should get new" do
    get pnl_new_url
    assert_response :success
  end

  test "should get about" do
    get pnl_about_url
    assert_response :success
  end

  test "should get destroy" do
    get pnl_destroy_url
    assert_response :success
  end
end
