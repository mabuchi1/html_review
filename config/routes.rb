Rails.application.routes.draw do
  devise_for :users
  root to: "portfolio#index"
  resources :profile, only: [:index]
  resources :blogs, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  get "/blogs", to:  "blogs#top"
  
end
