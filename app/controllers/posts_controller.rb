class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new #goes to matching html.erb form unless render is added
  end
  
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
