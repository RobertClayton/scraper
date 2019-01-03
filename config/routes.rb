Rails.application.routes.draw do
  get 'google_images_scraper/index'
  get 'marvel_images_scraper/index'
  get 'marvel_films_scraper/index'
  get 'home_page/index'

  root 'home_page#index'
end
