Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "application#home"
  get 'application/home', to: 'application#home', as: 'home'
  resources :rooms do 
    resources :messages
  end 
  resources :blogs, :messages, :blahs
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


end
