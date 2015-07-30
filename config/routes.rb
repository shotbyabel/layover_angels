Rails.application.routes.draw do
  

  root 'static_page#home'

  resources :layovers, only: [:new, :index, :create, :show]

  resources :users, only: [:index, :new, :edit, :create, :show, :update]

  resources :sessions, only: [:new, :create, :destroy]

  #sessions / logout  sessions/destroy



  


end

