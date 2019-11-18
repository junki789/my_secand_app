class PostsController < ApplicationController
  def index  
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order("created_at DESC")
  end

  def new
    @posts=Post.new
  end

  def create
    Post.create(post_params)
  end



  private
  def post_params
    params.permit(:name, :content, :wether,)
  end
end
