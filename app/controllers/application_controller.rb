class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  private
  def ensure_admin!
    unless current_user.admin?
      sign_out current_user
      redirect_to root_path + 'users/sign_in'
      return false
    end
  end
end
