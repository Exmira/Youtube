require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get media" do
    get pages_media_url
    assert_response :success
  end
end
