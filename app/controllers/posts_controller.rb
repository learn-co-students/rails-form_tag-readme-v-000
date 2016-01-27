class PostsController < ApplicationController
	def create
  		@post = params
  		redirect_to new_post_path(post: @post)
	end

	def new
		render 'posts/new'
	end
end