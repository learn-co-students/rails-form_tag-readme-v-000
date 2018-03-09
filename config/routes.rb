Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create] #new creates the form we see to insert our data


end
