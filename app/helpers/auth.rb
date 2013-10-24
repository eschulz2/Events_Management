helpers do

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end

  # true if current_user is logged in
  def logged_in?
    !current_user.nil?
  end

end