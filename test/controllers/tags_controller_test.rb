require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  test "should get add_to_note" do
    get :add_to_note
    assert_response :success
  end

  test "should get remove_from_note" do
    get :remove_from_note
    assert_response :success
  end

end
