Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]

  #get 'posts/new' => 'posts#new', as: 'new_post'
end