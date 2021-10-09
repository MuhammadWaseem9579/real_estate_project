Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :ads

  get '/ads_filter', to: "ads#ads_filter"
  get '/get_house_ads', to: "home#get_house_property_ads"
  get '/get_commercial_ads', to: "home#get_commercial_property_ads"
  get '/get_rent_ads', to: "home#get_rent_property_ads"
  get '/get_plot_ads', to: "home#get_plot_property_ads"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
