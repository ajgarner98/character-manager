Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  resources :feats
  resources :features
  resources :spells
  resources :skills
  resources :weapons
  resources :armors
  resources :characters do
    resources :armors
    resources :feats
    resources :features
    resources :spells
    resources :skills
    resources :weapons
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "characters#index"
end
