class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
# Provides a method to check if the user performing actions is in fact the current user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
# Ensures that a user is logged in before performing an action such as commenting on a product
  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in to perform this action..."
      redirect_to new_session_path
    end
  end

  helper_method :current_user
end
