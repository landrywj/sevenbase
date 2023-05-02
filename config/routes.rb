Rails.application.routes.draw do
  resources :messages
  resources :rooms
  # Defines the root path route ("/")
  root "application#home"
  get 'application/home', to: 'application#home', as: 'home'
  resources :blahs
  resources :blogs
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


end
