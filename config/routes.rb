# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  get '/users/:id', to: 'users#show', as: 'user'
  get '/users', to: 'users#index', as: 'users'
  post '/users/:user_id/posts/:id/newcomment', to: 'comments#create', as: 'create_new_comment'
  post '/users/:user_id/posts/:id/newlike', to: 'likes#create', as: 'create_new_like'
  get '/users/:user_id/posts/new', to: 'posts#new', as: 'user_new_posts'
  post '/users/:user_id/posts/new', to: 'posts#create', as: 'create_user_posts'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
  get '/users/:user_id/posts', to: 'posts#index', as: 'user_posts'
end
