Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :ads

  get '/ads_filter', to: "ads#ads_filter"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
