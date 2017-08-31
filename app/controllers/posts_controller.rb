class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    # Now this is where, instead of saying redirect '/posts/show' we can 
    # use our posts_path, which maps this back to the posts#index 
    redirect_to posts_path
  end 


end
