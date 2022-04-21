Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  root to: "home#index"
  devise_for :users
  resources :users
end
