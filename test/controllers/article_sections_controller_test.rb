require "test_helper"

class ArticleSectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get article_sections_create_url
    assert_response :success
  end
end
