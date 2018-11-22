Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :grievances, only: [:index]

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  post 'grievances/file', to: 'grievances#create'
  post 'grievances', to: 'grievances#index'
  post 'valid_points', to: 'valid_points#create'


end
