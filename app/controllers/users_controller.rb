class UsersController < ApplicationController
  def new_user
    if request.method=='POST'
      User.create(name: params[:name],email: params[:email],password: params[:password])
      session[:user]=params[:name]
      session[:cart]=nil
      redirect_to '/'
    end
  end
  def user_out
    session[:cart]=nil
    session[:user]=nil
    redirect_to '/'
  end
  def user_in
    if request.method=='POST'
      if (User.find_by_name(params[:name])) and (User.find_by_password(params[:password]))
        session[:user]=params[:name]
      end
    end
    session[:cart]=nil
    redirect_to '/'
  end  
end
