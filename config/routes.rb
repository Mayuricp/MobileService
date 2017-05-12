Rails.application.routes.draw do
  resources :sellers
  resources :customers
  devise_for :users
  root to: "dashboard#index"
end
