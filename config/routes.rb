Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
end

# get "/posts"
#   erb :"views/posts/index.html.erb"
# end

#
# Prefix Verb URI Pattern          Controller#Action
#   posts GET  /posts(.:format)     posts#index
# new_post GET  /posts/new(.:format) posts#new
