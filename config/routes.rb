Rails.application.routes.draw do
  resources :tweets
  resources :photos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get "hola", to: "main#hello"

  root to: 'main#hello'

  get 'saludo', to: 'main#hi'
  post "hi", to: "main#greetings"

end