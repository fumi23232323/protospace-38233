Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :users, only: [:edit, :update, :create, :new, :destroy, :show]
  resources :prototypes, only: [:new, :create, :index, :show, :update, :edit, :destroy] 
  resources :prototypes do
  resources :comments, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
