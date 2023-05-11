module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  def logged_in?
    current_user.present?
  end
  def log_in(user)
    session[:user_id] = user.id
  end
  def current_user?(user)
    user == current_user
  end
  def current_user
    if session[:user_id]
      #@current_user = @current_user || User.find_by(id: session[:user_id])と同じ意味
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end