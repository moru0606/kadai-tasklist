Rails.application.routes.draw do
  # root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'toppages/index'
  
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  resources :users ##追加
  
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :tasks
end
