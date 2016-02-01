Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :show]
  post '/posts', to: 'posts#create', as: 'create'
end