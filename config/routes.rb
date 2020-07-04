Rails.application.routes.draw do
  devise_for :users
  root to: 'messages#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
  resources :messages
end
