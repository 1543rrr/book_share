Rails.application.routes.draw do

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "/auth/:provider/callback" => "users#twitter_create"

  get "users/index" => "users#index"
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id/show" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "/" => "posts#index"


end
