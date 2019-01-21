require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get cart_list_url
    assert_response :success
  end

end
