Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
  # params from new page:
  # => {"controller"=>"posts", "action"=>"new"}

  # params from submitting new page:
  # => {"post"=>{"action"=>"create", "authenticity_token"=>"8F+6lvjVrgfSgRT97kRYJNTCAlnQfgC6qUDopV2OatdhZDAWs3bXAKuqXLZcQPXIN3FVqTEG/pyvh175eJ47hQ==", "controller"=>"posts", "post"=>{"description"=>"post desc", "title"=>"Post"}}, "controller"=>"posts", "action"=>"new"}
end
