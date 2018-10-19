Rails.application.routes.draw do
  devise_for :user, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users
  root 'home#index'
  get 'users/new'
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  get "home", to: 'users#new'


end
