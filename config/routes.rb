Rails.application.routes.draw do
  root 'products#index'
  devise_for :users  
  resources :products, :carts, :orders
  get 'users/admin' => 'users#admin'
  get 'users'=> 'users#index'
end
