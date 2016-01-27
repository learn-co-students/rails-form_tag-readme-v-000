class Post < ActiveRecord::Base
	def new
		render 'posts/new'
	end
end