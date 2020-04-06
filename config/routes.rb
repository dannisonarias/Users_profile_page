Rails.application.routes.draw do
  get 'user/signup', to: 'users#new'
  resources :users, only: [:create,:edit,:show,:update,:destroy,:index] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
