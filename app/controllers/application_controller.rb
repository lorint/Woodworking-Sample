class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Also allow this to be seen in all views
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
