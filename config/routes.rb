Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
# Adding :new causes an 'The action 'new' could not be found' error
# Go to PostsController and add 'new' action (or method)  
end
