Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  resources :user, only: [:show] do 
    resources :dive_entry
  end

end
