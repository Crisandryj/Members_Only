class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
      if @post.save
        redirect_to root_path, notice: 'Post was successfully created.'
      else
        @posts = Post.all
        flash[:alert] = @post.errors.count
        redirect_to root_path, alert: 'Post was not created.'
      end
    end


    def show
      @post = Post.find(params[:id])
    end

   def destory
     @post.delete
   end

    private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    end
