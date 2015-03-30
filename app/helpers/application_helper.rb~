module ApplicationHelper
  def user?
    if session[:user]
      if User.find_by_id(session[:user])
        User.find_by_id(session[:user])['name']
      end
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
