class UsersController < ApplicationController
  def new   
  end
  def create
    @user=false
    if session[:user]=User.create_new(session[:user],params)
      session[:cart]=nil
      @user=true     
    end 
  end
  def edit
    session[:cart]=nil
    session[:user]=nil
    redirect_to '/'
  end
  def user_in
    if (User.find_by_name(params[:name])) and (User.find_by_password(params[:password]))
      session[:user]=User.find_by_name(params[:name]).id
    end
    session[:cart]=nil
    redirect_to '/'
  end  
  def show
    @cart=User.cart(e['cart'])
    @user=User.find_by_id(session[:user])
  end
end
