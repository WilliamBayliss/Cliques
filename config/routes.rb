Rails.application.routes.draw do
  resources :comments
  resources :cliques
  resources :posts
  resources :users, only: :show
  root "posts#index"
  devise_for :users, path: '', path_names: { sign_in: 'sign_in', sign_out: 'sign_out', sign_up: 'sign_up' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
