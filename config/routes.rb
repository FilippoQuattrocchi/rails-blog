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

  root "articles#index"
end
