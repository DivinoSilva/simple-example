Rails.application.routes.draw do
  root :to => "products#index"
  resources :products
  resources :sizes, only: [:index, :create]
  resources :colors, only: [:index, :create]
end