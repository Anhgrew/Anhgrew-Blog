Rails.application.routes.draw do
  resources :notes
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles
  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"
  get "about", to: "pages#about"

end
