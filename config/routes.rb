Rails.application.routes.draw do
  root "posts#index"
  devise_for :users
  resources :friends
  get "posts/about"
  resources :posts
end
