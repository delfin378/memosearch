Rails.application.routes.draw do
  get 'messages/index'
  root to: 'messages#index'
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
