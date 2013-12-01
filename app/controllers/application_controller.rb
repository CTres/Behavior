class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_account
  	@current_account ||= current_user.account
  end

  helper_method :current_account
end
