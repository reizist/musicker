class BaseController < ApplicationController
  include CallAPI
  protect_from_forgery
  def login_required
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect_to root_path, notice: 'Please sign in.'
    end

  end

  def sign_in?
    !@current_user.nil?
  end

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
