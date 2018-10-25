Rails.application.routes.draw do
  resources :imap_providers
  devise_for :user, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users
  root 'home#index'
  get 'users/new'
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  get "home", to: 'users#new'
  get "home", to: 'imap_providers#new'
  post "start_backup", to: 'backup#start_backup'
end
