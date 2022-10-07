class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
      else
        @posts = Post.all
        flash[:alert] = @post.errors.count
        format.html { render :index, alert: 'Post was not created.' }
      end
    end

    end

   def destory
     @post.delete
   end

    private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    end
