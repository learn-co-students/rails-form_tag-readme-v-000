Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  get 'posts/new', to: 'posts#new', as: 'new_post'
end
