Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index new create show] do
      resources :comments, only: [:create]
      resources :likes, only: [:create]
    end
  end
end
