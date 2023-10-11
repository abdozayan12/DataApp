Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root to: 'users#index'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: %i[create new]
      resources :likes, only: %i[create new]
      get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
      delete '/users/:user_id/posts/:post_id/comments/:id', to: 'comments#destroy', as: 'delete_comment'
      delete '/users/:user_id/posts/:id', to: 'posts#destroy', as: 'delete_post'
    end
  end
end
