Rails.application.routes.draw do
  get "/dogs" => "dogs#index"
  post "/dogs" => "dogs#create"
  get "/dogs/:id" => "dogs#show"
  patch "/dogs/:id" => "dogs#update"
  delete "/dogs/:id" => "dogs#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
