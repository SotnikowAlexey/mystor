Rails.application.routes.draw do
  root 'products#index'
  post '/users/:id' => 'users#user_in' 
  resources :products, :carts, :orders, :users
end
