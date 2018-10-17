Rails.application.routes.draw do
  devise_for :user, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root 'home#index'
  get 'home/new_user'
end
