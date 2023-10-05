def create
  @post = Post.find(params[:post_id])
  @like = Like.new(user: current_user, post: @post)

  if @like.save
    flash[:success] = 'Liked successfully!'
    redirect_to user_post_path(@post.user, @post)
  else
    flash[:alert] = 'Something went wrong'
    render :new
  end
end
