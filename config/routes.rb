Rails.application.routes.draw do
  
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'users', to: 'users#create'
  get 'signup', to: 'users#new'
 
  resources :tasks
end
