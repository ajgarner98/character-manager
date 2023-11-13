Rails.application.routes.draw do
  resources :spells
  resources :skills
  resources :armors
  resources :weapons
  resources :characters
  devise_for :users
  devise_for :installs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
