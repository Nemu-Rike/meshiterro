class PostCommentsController < ApplicationController

  def create
    postimage = Postimage.find(params[:postimage_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.postimage_id = postimage.id
    comment.save
    redirect_to postimage_path(postimage)
  end

  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to postimage_path(params[:postimage_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
