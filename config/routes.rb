Rails.application.routes.draw do
  resources :comments
  resources :cliques
  resources :posts

  resource :timeline, only: :show
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
