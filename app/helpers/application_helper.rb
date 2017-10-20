module ApplicationHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  # def logged_in?
  #   !!current_user
  # end
  #
  # def must_login
  #   if !logged_in?
  #     flash[:danger] = "Please login!"
  #     redirect_to login_path
  #   end
  # end
end
