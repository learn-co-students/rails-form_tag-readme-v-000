class PostsController < ApplicationController

  def new
  end

  def post
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to 
  end

end