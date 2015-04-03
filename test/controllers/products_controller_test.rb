require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index product" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
    assert_template :index
  end
end
