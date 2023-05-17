Rails.application.routes.draw do
  resources :notes
  resources :books
  resources :posts, only: [:show, :create, :index, :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"
  get "about", to: "pages#about"

end
