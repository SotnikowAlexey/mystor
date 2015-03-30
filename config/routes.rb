Rails.application.routes.draw do
  root 'products#index'
  devise_for :users  
  resources :products, :carts, :orders, :users
  get 'admin' => 'admins#index'
  get 'admin/users' => 'admins#user_all'
end
