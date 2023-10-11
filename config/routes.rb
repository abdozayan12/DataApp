# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root to: 'users#index'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: %i[create new]
      resources :likes, only: %i[create new]
      get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
    end
  end
end
