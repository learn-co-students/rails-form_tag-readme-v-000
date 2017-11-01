class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new # implicitly renders the views/posts/new.html.erb view file, which has the same name as this #new action
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

end

# In the #create controller action (method) above, call AR's #create method on the Post class
# to instantiate and save to DB a new post instance with its title and description attribute values set via mass assignment
# and = to whatever the user entered into the title and description form fields,
# values which are stored in the params hash upon the form's submission
# the <input> for the form's title field has a name property value = "post[title]", which is a key in the params hash
# Therefore, whatever the user entered into the title field of the submitted form = params[:post][:title],
# which becomes the title attribute value of the post instance we're creating
# the <textarea> for the form's description field has a name property value = "post[description]", which is a key in the params hash
# Therefore, whatever the user entered into the description field of the submitted form = params[:post][:description],
# which becomes the description attribute value of the post instance we're creating
# Finally, we redirect to the index page that displays all posts.
# The #posts_path route helper method returns "/posts", which is the URL for the link to the index page
