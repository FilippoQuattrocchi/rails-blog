Rails.application.routes.draw do
  # get 'render/index'
  # get '/articles', to: "articles#index"
  # get '/articles/:id', to: "articles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :articles do
    resources :comments
  end

  # Auth
  post 'sign_up', to: "users#create"
  get "sign_up", to: "users#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
  put "account", to: "users#update"
  get "account", to: "users#edit"
  delete "account", to: "users#destroy"
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token

  root "articles#index"
end
