class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_admin

  private

  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end

  def store_session
    session[:admin_id] = @current_admin.id
  end

  def require_admin
    unless current_admin
      @heading = translate("authentication.error")
      @alert = translate("authentication.invalid_token")
      store_flash_message("#{@heading}: #{@alert}", :errors)
      redirect_to admin_sign_in_url
    end
  end
end
