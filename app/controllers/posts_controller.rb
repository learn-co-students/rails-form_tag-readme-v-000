class PostsController < ApplicationController
  def new
  end

  def create
    @post = params
    redirect_to new_post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end
end
