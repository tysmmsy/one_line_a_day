Rails.application.routes.draw do
  devise_for :users
  root "diaries#index"
  resources :users, only: [:edit, :update]
end
