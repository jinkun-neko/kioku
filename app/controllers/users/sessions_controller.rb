class Users::SessionsController < Devise::SessionsController
  # DELETE /resource/sign_out
  def destroy
    super
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest2@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.confirmed_at = Time.now  
    end
    sign_in user
    redirect_to posts_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  def guest_sign_out
    user = User.find_or_create_by!(email: 'guest2@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.confirmed_at = Time.now  
    end
    sign_out user
    redirect_to posts_path, notice: 'ゲストユーザーがログアウトしました。'
  end
end