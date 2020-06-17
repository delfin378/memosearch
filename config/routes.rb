Rails.application.routes.draw do
  root to: 'users#index'
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
