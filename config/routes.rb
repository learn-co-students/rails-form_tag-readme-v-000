Rails.application.routes.draw do

  resources :posts, only: [:index, :new, :create]

  # get '/posts/new', to: 'posts#new', as: 'new_post'
  #
  # post '/posts', to: 'posts#create'

end
