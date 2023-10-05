class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:success] = 'Comment created successfully!'
    else
      flash[:alert] = 'Something went wrong'
    end

    redirect_to user_post_path(current_user, @post)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
