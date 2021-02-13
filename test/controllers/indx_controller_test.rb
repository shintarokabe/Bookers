require 'test_helper'

class IndxControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get indx_show_url
    assert_response :success
  end

  test "should get new" do
    get indx_new_url
    assert_response :success
  end

  test "should get edit" do
    get indx_edit_url
    assert_response :success
  end

end
