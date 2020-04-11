require 'test_helper'

class PresentationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presentations_new_url
    assert_response :success
  end

end
