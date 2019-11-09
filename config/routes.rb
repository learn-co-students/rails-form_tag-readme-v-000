Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :new]
  
  # get '/posts/new', to: 'posts#new', as: 'new_post'
  # I need to use "as: 'new_post'" above, or else the corresponding route helper
  # would be posts_new_path instead of new_post_path.
  # This is taken care of automatically by the #resources method above.
end
