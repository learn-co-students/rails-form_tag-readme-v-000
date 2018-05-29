Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create] #added the new_post_path
end
