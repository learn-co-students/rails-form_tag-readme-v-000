Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]

  #get 'new_post_path', to: 'posts#new'
end