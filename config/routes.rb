Rails.application.routes.draw do
  devise_for :users
  post "/" => "diaries#create"
  root "diaries#index"
  resources :users, only: [:edit, :update, :create] do
    resources :diaries, only: [:index, :create]
  end
end
