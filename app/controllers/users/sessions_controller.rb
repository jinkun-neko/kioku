class Users::SessionsController < Devise::SessionsController
  # DELETE /resource/sign_out
  def destroy
    super
  end

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to posts_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end