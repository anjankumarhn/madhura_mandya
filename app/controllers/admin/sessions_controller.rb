class Admin::SessionsController < Admin::BaseController

  skip_before_filter :require_admin, :except => :sign_out
  before_filter :redirect_if_signed_in, :only => :sign_in

  layout 'plane', only: [:sign_in, :create_session]

  def sign_in

  end

  ## This method will accept a proc, execute it and render the json
  def create_session

    # Fetching the user data (email / username is case insensitive.)
    @authenticated, @admin, @heading, @alert = Admin.authenticate(params[:login_handle], params[:password])

    if @authenticated

      session[:admin_id] = @admin.id
      redirect_to redirect_url_after_sign_in
    else

      redirect_to redirect_url_if_sign_in_fails
    end

  end

  def sign_out

    @heading = translate("authentication.success")
    @alert = translate("authentication.logged_out_successfully")


    # Reseting the auth token for user when he logs out.


    session[:admin_id] = nil

    redirect_to redirect_url_after_sign_out

  end

end
