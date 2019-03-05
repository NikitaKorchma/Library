Rails.application.routes.draw do

  root 'books#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :books, only: [:index, :show]
  resources :authors, only: [:show]

end
