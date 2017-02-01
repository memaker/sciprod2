Rails.application.routes.draw do
  resources :publications

  root to: 'publications#index'
  devise_for :users
  resources :users
end
