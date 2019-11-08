Rails.application.routes.draw do
  resources :products
  resources :sizes, only: [:index, :create]
  resources :colors, only: [:index, :create]
end