Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create] #==> index_post_path, new_post_path ( GET /posts/index; GET /posts/new; POST /posts/new )
end
