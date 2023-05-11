Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  get 'login', to:'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
end