class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
<<<<<<< HEAD

  end

  def create
    post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end



=======
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
>>>>>>> b3077bed0d50c25829a0fa6f95774eff05ebffff
end
