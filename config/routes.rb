Rails.application.routes.draw do
  root "posts#index"
  devise_for :users
  resources :friends
  get "posts/about"
  get "posts/download"
  resources :posts
end
