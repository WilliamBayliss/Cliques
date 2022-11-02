Rails.application.routes.draw do
  resources :cliques do
    get 'members'
    get 'administrators'
    get 'requests'
  end
  resources :posts do
    post 'upvote' => 'posts#upvote', as: :upvote
    post 'downvote' => 'posts#downvote', as: :downvote

    resources :comments do
      post 'upvote' => 'comments#upvote', as: :upvote
      post 'downvote' => 'comments#downvote', as: :downvote
    end
  end
  resources :memberships do
    post 'accept' => 'memberships#accept', as: :accept
  end

  resources :users, only: [:show]
  
  root "posts#index"
  devise_for :users, path: '', path_names: { sign_in: 'sign_in', sign_out: 'sign_out', sign_up: 'sign_up' }
end
