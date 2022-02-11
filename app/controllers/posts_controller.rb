class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @user = User.find_by(id: session['user_id'])
    @post = Post.new
    @posts = Post.all.reverse
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def edit
    console
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:message))
    redirect_to posts_url
  end 

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
