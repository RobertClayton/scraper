require 'test_helper'

class GoogleImagesScraperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get google_images_scraper_index_url
    assert_response :success
  end

end
