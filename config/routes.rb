Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books
  # get "/users/sign_in", to: "devise/sessions#new"
  # get '/users', to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
