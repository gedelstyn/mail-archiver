Rails.application.routes.draw do
  devise_for :user, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :mail_users
  root 'mail_users#index'
end
