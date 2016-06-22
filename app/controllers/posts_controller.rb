class PostsController < ApplicationController

  def index
  end
  
  def new
  end

  def create
    @post = params
    redirect_to new_post_path(post: @post)
  end

end