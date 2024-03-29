class UsersController < ApplicationController

  def index
    @users = User.all.order(id: "DESC")
  end

  def show
      @user = User.find(params[:id])
      @posts = @user.posts
      @favorite_count = 0
      @posts.each do |post|
      @favorite_count += post.favorites.count
    end
  end

  def edit 
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path , alert: '不正なアクセスです。'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'ログアウトしました。'
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end
end
