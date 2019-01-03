class GoogleImagesScraperController < ApplicationController
  def index
    @marvel_scraper = MarvelFilmsScraper.scrape
    @google_images = GoogleImagesScraper.scrape(@marvel_scraper.map(&:first))
  end
end
