class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description]) #create new post from params hash
    redirect_to posts_path #redirects to posts index page
  end
end
