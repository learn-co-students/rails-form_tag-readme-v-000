require 'pry'
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
  end
  def create
    @post = Post.create!(title: params[:title], description: params[:description])
    binding.pry
    redirect_to posts_path
  end
end
