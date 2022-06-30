require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get string:category_name" do
    get categories_string:category_name_url
    assert_response :success
  end

end
