class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user

  private

  def current_user
    # return unless session[:user_id]
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authenticate
    if !logged_in? || current_user.nil?
      redirect_to new_user_path
    end
  end

  # checks if user is logged in and available
  def authorize?
    !current_user.nil? && !!logged_in?
  end
end
