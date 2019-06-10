class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new #goes to matching html.erb form unless render is added
  end
  
  
end
