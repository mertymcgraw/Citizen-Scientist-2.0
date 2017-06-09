Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  resources :dive_entry
  resources :user, only: [:show]

end
