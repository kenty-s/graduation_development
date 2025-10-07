require "test_helper"

class SearchResultControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get search_result_show_url
    assert_response :success
  end
end
