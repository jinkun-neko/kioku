class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only:  %i[update destroy]

  def new
    super
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザー認証メールを送信いたしました。認証が完了しましたらログインをお願いいたします。"
      redirect_to new_user_session_path
    else
      flash[:alert] = "ユーザー登録に失敗しました。"
      render action: :new and return
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

  private
    def user_params
      params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
    end