Rails.application.routes.draw do
  root to: "portfolio#index"
  resources :profile, only: [:index]
  resources :blogs, only: [:new, :create, :show]
  get "/blogs", to:  "blogs#top"
end
