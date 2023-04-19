Rails.application.routes.draw do
  devise_for :users
  get 'home/show'
  
  root "home#show"
end
