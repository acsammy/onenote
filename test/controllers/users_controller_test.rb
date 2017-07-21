require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get add_note" do
    get :add_note
    assert_response :success
  end

  test "should get remove_note" do
    get :remove_note
    assert_response :success
  end

end
