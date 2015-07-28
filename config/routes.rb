Rails.application.routes.draw do
  
  root 'static_page#home'

  resources :users, only: [:index, :new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  
end

