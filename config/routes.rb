Rails.application.routes.draw do
  resources :interests

  resources :participations

  resources :authors

  root to: 'home#index'
  resources :publications
  devise_for :users
  resources :users
end
