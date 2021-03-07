Rails.application.routes.draw do
  get 'my_goods_nices/index'
  get 'new_arrivals/index'
  get 'popular_ogiris/index'
  get 'my_ogiris/index'
  get 'comments/create'
  get 'comments/destroy'
  resources :posts
  resources :users
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
