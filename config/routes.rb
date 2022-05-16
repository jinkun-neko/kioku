Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  resources :posts do
    resource :favorite, only: [:create, :destroy]
  end
end
