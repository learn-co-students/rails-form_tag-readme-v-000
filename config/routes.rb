Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
end
  # above line of code is the same as saying:
  # get '/posts', to: 'posts#index'
  # route is GET request to localhost:3000/posts to display the index of all posts
  # route is mapped to #index controller action (method) in the PostsController class
  # By default, the name of the route is posts (since this is the URL path),
  # so our route helper method is #posts_path, which returns the URL string href attribute value
  # of the link to the posts index page
  # line 2 is also the same as saying:
  # get '/posts/new', to: 'posts#new'
  # route is GET request to localhost:3000/posts/new, where form is presented to create a new post
  # route is mapped to #new controller action (method) in PostsController class
  # By standard RESTful conventions (as seen in Ruby on Rails guides),
  # the route helper method #new_post_path returns the string URL href attribute value "/posts/new"
  # of the link to the page where user sees form to create a new post
  # line 2 is also the same as saying:
  # post '/posts', to: 'posts#create'
  # route is POST request to index page '/posts'
  # route receives the POST request that is sent by the form to create a new post upon its submission
  # i.e. route receives the data submitted in the form to create a new post
  # route is mapped to the #create controller action (method) defined in PostsController class
