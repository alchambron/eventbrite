Rails.application.routes.draw do
  devise_for :users
  resources :attendances
  resources :events
  root "events#index"
  resources :users, only: [:show]
end
