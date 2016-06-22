class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def save
    Post.create(title: params[:title], description: params[:description])
    redirect_to :index
  end

  def new
  end

end
