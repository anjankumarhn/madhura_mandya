class Admin::BaseController < ApplicationController

  before_filter :require_admin

  protected



  def redirect_url_if_sign_in_fails
    admin_sign_in_url
  end

  def redirect_url_after_sign_in
    root_url
  end

  def redirect_url_after_sign_out
    root_url
  end

  def redirect_if_signed_in
    redirect_to redirect_url_after_sign_in if current_admin
  end

  def redirect_unless_signed_in
    redirect_to redirect_url_if_sign_in_fails unless current_admin
  end

end