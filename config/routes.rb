Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users
  resources :products


  # Defines the root path route ("/")
  # root "articles#index"
end
