Rails.application.routes.draw do

  resources :items, only: [:index, :show] do
    resources :users, only: [:show, :index] 
  end

  resources :users, only: [:show] do
    resources :items, only: [:show, :index]
  end


end
