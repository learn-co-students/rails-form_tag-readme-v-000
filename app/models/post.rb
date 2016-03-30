class Post < ActiveRecord::Base
  def create
    @post = params
    redirect_to new_post_path(post: @post)
  end

end