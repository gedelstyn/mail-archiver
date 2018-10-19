class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :authenticate_user!

  def google_oauth2
    auth = request.env["omniauth.auth"]
    user = User.where(email: auth["info"]["email"], can_login: true).first # Got rid of this section, it creates the user if they dont exist#_or_initialize(email: auth["info"]["email"], password: Devise.friendly_token[0,20])
    #user.save!
    if !user
      raise "Sorry, your account is not registered, please contact your administrator"
    end
    user.remember_me = false
    sign_in(:user, user)
    redirect_to after_sign_in_path_for(user)
  end
end