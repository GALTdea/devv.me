Rails.application.routes.draw do

  devise_for :users
  resources :profile, only: [:show, :edit, :update]
  get 'home/show'
  
  root "home#show"

  
end
