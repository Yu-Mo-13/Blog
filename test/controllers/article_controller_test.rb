require "test_helper"

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get article_index_url
    assert_response :success
  end

  test "should get detail" do
    get article_detail_url
    assert_response :success
  end

  test "should get post" do
    get article_post_url
    assert_response :success
  end
end
