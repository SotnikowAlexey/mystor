class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin!
  def destroy
    User.delete(params['id_user'])
    redirect_to '/admin/users'
  end 
  def index
    @users=User.all
  end
end
