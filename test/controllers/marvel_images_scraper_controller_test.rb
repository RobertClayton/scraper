require 'test_helper'

class MarvelImagesScraperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marvel_images_scraper_index_url
    assert_response :success
  end

end
