class HomePageController < ApplicationController
  def index
    @marvel_scraper = MarvelFilmsScraper.scrape
  end

  def google_image_scrape
    @marvel_scraper = MarvelFilmsScraper.scrape
    @google_images = GoogleImagesScraper.scrape(@marvel_scraper.map(&:first))
  end

  def marvel_image_scrape
    @marvel_scraper = MarvelFilmsScraper.scrape
    @google_images = MarvelImagesScraper.scrape
  end
end
