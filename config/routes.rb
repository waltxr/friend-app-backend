Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :grievances, only: [:index]

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  post 'grievances', to: 'grievances#create'
  post 'actions', to: 'actions#create'

end
