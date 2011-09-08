class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def current_user
    @current_user = User.find_by_id(session[:user_id])
  end



end
