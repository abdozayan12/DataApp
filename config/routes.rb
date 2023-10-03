Rails.application.routes.draw do
  root 'users#index'

  get '/users/:user_id/posts/:id', to: 'posts#index', as: 'user_post'
  get '/users/:user_id/posts', to: 'posts#show', as: 'user_posts'
  get "/users/:user_id/posts/:id", to: "posts#show", as: "user_post"
  get "/users/:user_id/posts", to: "posts#index", as: "user_posts"
end
