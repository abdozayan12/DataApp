class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = 'Comment created successfully!'
      redirect_to post_path(@post)
    else
      flash[:error] = 'Failed to save comment.'
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end