Rails.application.routes.draw do
  root to: 'messages#index'
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
