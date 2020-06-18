Rails.application.routes.draw do
  root to: 'messages#index'
  resources :users, only: [:edit, :update]
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
