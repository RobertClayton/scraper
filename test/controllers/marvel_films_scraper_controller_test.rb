require 'test_helper'

class MarvelFilmsScraperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marvel_films_scraper_index_url
    assert_response :success
  end

end
