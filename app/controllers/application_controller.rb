class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_ticket

  def current_ticket
    @current_ticket ||= CurrentTicket.fetch
  end

  def deny_access!
    redirect_to root_path, alert: "Access Denied!"
  end
end