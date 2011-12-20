require 'test_helper'

class ResponseControllerTest < ActionController::TestCase
  test "should get thankyou" do
    get :thankyou
    assert_response :success
  end

end
