class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only:  %i[update destroy]

  def create
    super do                                             
      resource.update(confirmed_at: Time .now.utc)
    end
  end

  protected

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
  
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
  end
  

  def ensure_normal_user
    if resource.email == 'guest2@example.com'
      redirect_to posts_path, alert: 'ゲストユーザーの更新・削除はできません。'
    end
  end

  #サインアップ後の遷移先を指定する方法
    def after_sign_up_path_for(resource)
      posts_path 
    end
  end