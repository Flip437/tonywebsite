require 'test_helper'

class StaticpageControllerTest < ActionDispatch::IntegrationTest
  test "should get gallery" do
    get staticpage_gallery_url
    assert_response :success
  end

  test "should get bio" do
    get staticpage_bio_url
    assert_response :success
  end

  test "should get repertoire" do
    get staticpage_repertoire_url
    assert_response :success
  end

end
