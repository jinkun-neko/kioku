Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :users
  resources :posts do
    resource :favorite, only: [:create, :destroy]
  end
end
