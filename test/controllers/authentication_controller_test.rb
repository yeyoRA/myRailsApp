require 'test_helper'

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get authentication_check_url
    assert_response :success
  end

end
