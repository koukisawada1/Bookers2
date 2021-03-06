Rails.application.routes.draw do

  root "homes#index"
  get "home/about" => "homes#about"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:create,:index,:show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :create, :update]


end
