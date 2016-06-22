Rails.application.routes.draw do
  resources :posts, only: [:index]

  get 'index', to: 'posts#index'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#save'
end
