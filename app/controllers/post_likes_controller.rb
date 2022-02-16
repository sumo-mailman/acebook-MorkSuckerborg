class PostLikesController < ApplicationController
  before_action :set_post
  before_action :set_post_like, only: %i[ destroy ]

  # POST /post_likes or /post_likes.json
  def create
    unless already_liked?
      @post_like = @post.post_likes.build(post_like_params)

      respond_to do |format|
        if @post_like.save
          format.html { redirect_to root_path, notice: "Post like was successfully created." }
          format.json { render :show, status: :created, location: @post_like }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @post_like.errors, status: :unprocessable_entity }
        end
      end
    else
      destroy
    end
  end

  # DELETE /post_likes/1 or /post_likes/1.json
  def destroy
    @post_like = PostLike.find_by(user_id: current_user.id, post_id:params[:post_id])
    @post_like.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Post like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_like
      @post_like = @post.post_likes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_like_params
      params.require(:post_like).permit(:post_id, :user_id)
    end

    def set_post
      @post = Post.find(params[:post_id])
    end

    def already_liked?
      PostLike.where(user_id: current_user.id, post_id:params[:post_id]).exists?
    end
end
