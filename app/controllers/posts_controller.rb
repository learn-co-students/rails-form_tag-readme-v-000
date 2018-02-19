class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    # below is same as mass assignment: Post.create(params[:students]) 
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
