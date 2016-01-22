class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def show
    @post =  Post.find(params[:id])
  end

  def create
    @post = params
    redirect_to new_post_path(post: @post)
  end
end