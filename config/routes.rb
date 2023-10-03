Rails.application.routes.draw do
  root 'users#index'

  # Posts routes
  get '/users/:user_id/posts/:id', to: 'posts#index', as: 'user_post_index'
  get '/users/:user_id/posts', to: 'posts#show', as: 'user_posts_show'

  # Users routes
  get "/users/:user_id/posts/:id", to: "users#show", as: "user_post"
  get "/users/:user_id/posts", to: "users#index", as: "user_posts"
end