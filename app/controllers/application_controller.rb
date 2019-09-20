class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user

  private

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
