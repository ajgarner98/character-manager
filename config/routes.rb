Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  resources :feats
  resources :features
  resources :spells
  resources :skills
  resources :armors
  resources :weapons
  resources :characters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "characters#index"
end
