class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_filter :ensure_admin!
  def index
  end
  def user_all
    @users=User.all
  end 
end
