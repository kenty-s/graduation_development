class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    auth = request.env['omniauth.auth']
    @user = User.from_omniauth(auth)

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      redirect_to root_path, alert: 'Googleログインに失敗しました'
    end
  end
end
