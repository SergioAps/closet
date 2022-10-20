Rails.application.routes.draw do
  devise_for :users do
  root to: 'home#index'
  resources :products

  # Defines the root path route ("/")
  # root "articles#index"
end
