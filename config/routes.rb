Rails.application.routes.draw do
  resources :books
  resources :pages
  #get 'public/index'
  root to: 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
