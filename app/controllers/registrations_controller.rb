class Users::RegistrationsController < Devise::RegistrationsController

  #サインアップ後の遷移先を指定する方法
    def after_sign_up_path_for(resource)
      posts_path 
    end
  
  end