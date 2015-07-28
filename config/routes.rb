Rails.application.routes.draw do
  
  root 'static_page#home'

  resources :users, only: [:index, :new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  
end

