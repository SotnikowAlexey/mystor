class UsersController < ApplicationController
  def destroy
    User.delete(params['id_user'])
    redirect_to '/admin/users'
  end 
  def index
    redirect_to '/orders/:id'
  end
end
