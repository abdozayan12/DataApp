class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:id])
      @comment = @post.comments.new(comment_params)
      @comment.user = current_user
  
      if @comment.save
        redirect_to user_post_path(current_user, @post)
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:text)
    end
  end