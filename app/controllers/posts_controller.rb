class PostsController < ApplicationController
  def create
    current_user.posts.create(post_params)
    redirect_to posts_url
  end

  def index
    @post = Post.new
    @posts = Post.order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_url, notice: "Post successfully deleted"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to posts_url, notice: "Post successfully edited"
  end 

  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end
end
