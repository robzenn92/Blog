require 'test_helper'

class LikeControllerTest < ActionController::TestCase
  test "should get add_like_to_article" do
    get :add_like_to_article
    assert_response :success
  end

  test "should get remote_like_from_article" do
    get :remote_like_from_article
    assert_response :success
  end

end
