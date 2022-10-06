class DashboardController < ApplicationController


  def index
    @user = current_user
    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])
  end


end
