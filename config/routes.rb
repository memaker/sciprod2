Rails.application.routes.draw do
  resources :publications

  root to: 'home#index'
  devise_for :users
  resources :users
end
