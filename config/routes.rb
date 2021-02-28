Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :posts
  devise_for :users
  root  'tops#index'
  resources :posts, except: [:index] do
    resources :comments, only: [:create, :destroy]
  end
end
