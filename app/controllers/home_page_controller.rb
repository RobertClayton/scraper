class HomePageController < ApplicationController
  def index
  end

  def google_image_scrape
    @marvel_scraper = MarvelFilmsScraper.scrape
    @google_images = GoogleImagesScraper.scrape(@marvel_scraper.map(&:first))
  end
end
