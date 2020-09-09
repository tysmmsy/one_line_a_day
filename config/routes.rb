Rails.application.routes.draw do
  devise_for :users
  post "/" => "diaries#create"
  root "diaries#index"
  
  resources :users, only: [:edit, :update, :create] do
    resources :diaries, only: [:index, :create, :show, :destroy]
      end
      
  resources :diaries do
    get :search, on: :collection
  end

end
