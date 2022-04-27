class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    if @post.user != current_user
      redirect_to posts_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(recipe_params)
      redirect_to post_path(@post), notice: "投稿を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @post  = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(@post.user), notice: "投稿を削除しました。"
  end


  private
  def post_params
    params.require(:post).permit(:body, :image)
  end
end
