class PostsController < ApplicationController
  def new
    @post = Post.all
  end

  def create
    @post = params
    redirect_to new_post_path(post: @post)
  end
end
