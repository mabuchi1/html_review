Rails.application.routes.draw do
  root to: "portfolio#index"
  resources :profile, only: [:index]
end
