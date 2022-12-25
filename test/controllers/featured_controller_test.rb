require "test_helper"

class FeaturedControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get featured_home_url
    assert_response :success
  end
end
