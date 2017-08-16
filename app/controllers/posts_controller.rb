class PostsController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @posts = Post.all
  end

  def new

  end

  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  def show

  end

  private
    def set_user
      @post = Post.find(params[:id])
    end

end
