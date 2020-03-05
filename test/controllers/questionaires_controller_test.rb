require 'test_helper'

class QuestionairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get questionaires_new_url
    assert_response :success
  end

end
