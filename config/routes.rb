Rails.application.routes.draw do
  root :to => "products#index"
  resources :products
  resources :items, only: [:index, :create]
  resources :sizes, only: [:index, :create]
  resources :colors, only: [:index, :create]
end