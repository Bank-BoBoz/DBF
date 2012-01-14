require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get who_log" do
    get :who_log
    assert_response :success
  end

end
