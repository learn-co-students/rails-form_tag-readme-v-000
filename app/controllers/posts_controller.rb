class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    Post.create(params)
    redirect_to psots_path
  end

end
