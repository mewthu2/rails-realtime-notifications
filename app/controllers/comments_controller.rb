class CommentsController < ApplicationController
  before_action :authenticate_user!

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  @comment.user = current_user
  @comment.save
  redirect_to post_path(@post)
end

private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
  