def google_oauth2
  @user = User.from_omniauth(request.env["omniauth.auth"])

  if @user.persisted?
    sign_in_and_redirect @user, event: :authentication 
    set_flash_message(:notice, :success, kind: 'google') if is_navigational_format?
  else
    session["devise.google_data"] = request.env["omniauth.auth"][:info]
    #google認証の場合は、なぜかauth_hashの容量が大きく、一瞬で容量オーバーとなるため、新規登録時に必要な情報のみをsessionに渡すこととしました。（おそらく画像データのせい？）
    redirect_to 新規登録ページ
  end
end