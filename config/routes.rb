Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'
  resources :coins
  #get '/coins', to: 'coins#index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
