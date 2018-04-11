class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
     return unless session[:uid]
     @current_user ||= User.find(session[:uid])
   end

  def logged_in?
    !!session[:uid]
  end

end
