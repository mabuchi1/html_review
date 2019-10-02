Rails.application.routes.draw do
<<<<<<< Updated upstream
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  root to: "portfolio#index"
  resources :profile, only: [:index]
>>>>>>> Stashed changes
end
