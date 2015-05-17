class OauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    # debugger
    @user = User.find_for_oauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

end