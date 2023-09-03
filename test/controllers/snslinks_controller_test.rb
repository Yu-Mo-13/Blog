require "test_helper"

class SnslinksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get snslinks_index_url
    assert_response :success
  end

  test "should get edit" do
    get snslinks_edit_url
    assert_response :success
  end
end
