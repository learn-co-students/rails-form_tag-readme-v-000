require 'pry'
class PostsController < ApplicationController
  def new
  end

  def create
    binding.pry
    @post = Post.create(permitted_params)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  private

    def permitted_params
      params.permit(:title, :description)
    end

end
