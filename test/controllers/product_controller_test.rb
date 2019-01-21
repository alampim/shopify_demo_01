require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get product_list_url
    assert_response :success
  end

end
