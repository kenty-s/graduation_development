require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get multiple_conditions" do
    get search_multiple_conditions_url
    assert_response :success
  end
end
