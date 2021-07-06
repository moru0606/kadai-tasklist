Rails.application.routes.draw do
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'toppages/index'
  
  
  resources :users ##追加
  
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :tasks
end
