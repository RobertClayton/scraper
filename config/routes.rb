Rails.application.routes.draw do
  get 'marvel_films_scraper/index'

  root 'home_page#index'

  get 'home_page/index'
  get 'google_image_scrape', :to => 'home_page#google_image_scrape'
  get 'marvel_image_scrape', :to => 'home_page#marvel_image_scrape'
end
