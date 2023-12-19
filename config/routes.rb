Rails.application.routes.draw do
  devise_for :users
  # you can delete this
  # devise_for :users
 
  resources :feats
  resources :features
  resources :spells
  resources :skills
  resources :weapons
  resources :armors do
    member do
      get 'edit' 
    end
  end
  resources :characters do
    resources :weapons
    resources :armors
    resources :feats
    resources :features
    resources :spells
    resources :skills

    member do
      post 'increase_level'
      post 'increase_health'
      post 'decrease_health' 
    end
    
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "characters#index"
end
