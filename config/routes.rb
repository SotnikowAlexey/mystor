Rails.application.routes.draw do
  get '/' => 'products#index' 
  post '/show' => 'products#show'
  post '/cart' => 'carts#add'
  get '/cart' => 'carts#show'
  post '/order' => 'orders#new_order'
  get '/user/new' => 'users#new_user'
  post '/user/new' => 'users#new_user'
  get '/user/out' => 'users#user_out'
  get '/user/in' => 'users#user_in'
  post '/user/in' => 'users#user_in'
end
