Rails.application.routes.draw do
  get 'sessions/new'
  get 'user/signup', to: 'users#new'
  resources :users, only: [:create,:edit,:show,:update,:destroy,:index] 
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
