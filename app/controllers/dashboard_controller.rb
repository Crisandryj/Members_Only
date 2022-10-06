class DashboardController < ApplicationController
  # before_action :load_posts

  def home
    @user = current_user
    @posts = current_user.posts if user_signed_in?
  end


  private

  # def load_posts
  #   @posts = Post.order("created_at desc").limit(5)
  # end
end
