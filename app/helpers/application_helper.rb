module ApplicationHelper
  def user?
    if session[:user]
      session[:user]
    else
      false
    end
  end
  def authorization?
    if (request.path=='/') and (session[:user]==nil)
      true
    else
      false
    end
  end
end
