Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  get '/new', to: 'posts#new', as: 'new_post'
  root to: 'posts#index'
end
