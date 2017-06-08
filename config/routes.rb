Rails.application.routes.draw do
  devise_for :models
  root 'home#index'
  resources :dive_entry

end
