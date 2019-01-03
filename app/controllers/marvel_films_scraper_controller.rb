class MarvelFilmsScraperController < ApplicationController
  def index
    @marvel_scraper = MarvelFilmsScraper.scrape
  end
end
