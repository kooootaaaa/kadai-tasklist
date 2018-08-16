Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'

  # resources :users, only: [:new, :create]
  #→動く

  # get 'users/new'
  # post 'users/create'
  #→動かない

  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'

  resources :tasks
end
