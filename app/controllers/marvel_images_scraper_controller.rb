class MarvelImagesScraperController < ApplicationController
  def index
    @marvel_scraper = MarvelFilmsScraper.scrape
    @google_images = MarvelImagesScraper.scrape
  end
end
