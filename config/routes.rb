Rails.application.routes.draw do
<<<<<<< Updated upstream
  root "messages#index"
=======
  devise_for :users
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
>>>>>>> Stashed changes
end
