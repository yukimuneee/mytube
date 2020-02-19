Rails.application.routes.draw do
  resources :events
  devise_for :users
  root "videos#index"
  resources :videos, only: [:new, :create, :show]
  resources :users, only: :show
end
