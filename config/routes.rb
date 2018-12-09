Rails.application.routes.draw do
  root 'home_page#index'

  get 'home_page/index'
  get 'home_page', :to => 'home_page#index'
  get 'google_image_scrape', :to => 'home_page#google_image_scrape'
end
