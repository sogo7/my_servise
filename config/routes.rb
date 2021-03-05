Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :posts
  root  'tops#index'
  resources :posts, except: [:index] do
    resources :comments, only: [:create, :destroy]
  end
  resources :posts do
    post 'add' => 'goods#create'
    delete '/add' => 'goods#destroy'
  end
  resources :comments do
    post 'add' => 'nices#create'
    delete '/add' => 'nices#destroy'
  end
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
end
