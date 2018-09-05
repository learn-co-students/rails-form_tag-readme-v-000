Rails.application.routes.draw do
  # Adding comments below to refer back to original code

  #resources :posts, only: [:index]
  resources :posts, only: [:index, :new, :create]
end
