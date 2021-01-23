Rails.application.routes.draw do
  root 'home#index'

  resources :quantities
  resources :measures
  resources :ingredients

  put '/records_update', to: 'application#records_update'
  post '/calculate', to: 'application#calculate'
end
