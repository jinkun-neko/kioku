class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only:  %i[update destroy]

  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to posts_path, alert: 'ゲストユーザーの更新・削除はできません。'
    end
  end

  #サインアップ後の遷移先を指定する方法
    def after_sign_up_path_for(resource)
      posts_path 
    end
  end