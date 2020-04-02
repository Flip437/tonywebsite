require 'test_helper'

class GigControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gig_index_url
    assert_response :success
  end

  test "should get show" do
    get gig_show_url
    assert_response :success
  end

  test "should get create" do
    get gig_create_url
    assert_response :success
  end

  test "should get edit" do
    get gig_edit_url
    assert_response :success
  end

end
