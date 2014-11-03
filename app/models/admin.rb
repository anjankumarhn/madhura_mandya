class Admin < ActiveRecord::Base
  has_secure_password

  validates :name,
  :presence => true, :uniqueness => true

  validates :username,
  :presence => true,
  :uniqueness => {:case_sensitive => false}

  validates :email,
  presence: true,
  uniqueness: {message: "email already exists"},
  :format => {:with =>  ConfigCenter::GeneralValidations::EMAIL_FORMAT_REG_EXP,
    :message => "Invalid email"}

    validates :password,
    :presence => true,
    :format => {:with => ConfigCenter::GeneralValidations::PASSWORD_FORMAT_REG_EXP},
    unless: Proc.new { |admin| admin.password.blank? }




      def generate_default_password
        unless self.password_digest
          password = ConfigCenter::Admin::DEFAULT_PASSWORD
          self.password = password
          self.password_confirmation = password
        end
      end

      def self.authenticate(login_handle, password)
        admin = Admin.where("LOWER(email) = LOWER('#{login_handle}') OR LOWER(username) = LOWER('#{login_handle}')").first
        authenticated = false
        heading = I18n.translate("authentication.error")
        alert = I18n.translate("authentication.invalid_login")



    # If the user exists with the given username / password
    if admin && admin.authenticate(password)
      # If successfully authenticated.
      heading = I18n.translate("authentication.success")
      alert = I18n.translate("authentication.logged_in_successfully")
      authenticated = true
    end

    return authenticated, admin, heading, alert

  end
end
