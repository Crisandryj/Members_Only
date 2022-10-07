class DashboardController < ApplicationController


  def index
    @posts = Post.all
    @posts.each do |post|
    @user = User.where(:id => post.user).first
    end
  end

  def show
    @post = Post.find(params[:id])
  end


end
