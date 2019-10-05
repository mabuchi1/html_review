Rails.application.routes.draw do
  root to: "portfolio#index"
  resources :profile, only: [:index]
  resources :blog, only: [:index, :new]
end
