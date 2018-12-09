class HomePageController < ApplicationController
  def index
    @marvel_scraper = SimpleScraper.marvel_films_scraper
  end
end
