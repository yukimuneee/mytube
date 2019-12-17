Rails.application.routes.draw do
  devise_for :users
  root "videos#index"
  resources :videos, only: [:new, :create, :show]
  resources :users, only: :show
end
