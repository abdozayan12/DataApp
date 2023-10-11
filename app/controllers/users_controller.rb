class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = [User.includes(:posts).find(params[:id])]
    @posts = @users[0].recent_posts
  end

  def sign_out_user
    sign_out current_user
    redirect_to root_path
  end
end
