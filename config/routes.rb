Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  resources :posts
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
