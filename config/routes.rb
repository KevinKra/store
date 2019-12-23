Rails.application.routes.draw do
  get "/", to: "welcome#index"

  get "/register", to: "users#new"
  get "/profile", to: "users#show"
  post "/register", to: "users#create"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
end
