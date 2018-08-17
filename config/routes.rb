Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
  # index => posts_path
  # new => new_post_path
end
