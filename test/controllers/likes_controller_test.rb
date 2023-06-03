require "test_helper"

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get likes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get likes_destroy_url
    assert_response :success
  end

  test "should get like_params" do
    get likes_like_params_url
    assert_response :success
  end
end
