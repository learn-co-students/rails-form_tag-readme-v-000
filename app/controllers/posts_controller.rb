class PostsController < ApplicationController

  def new
  end

  def index

  end

  def create
    @post = params
    redirect_to new_post_path(post: @post)
  end

end
