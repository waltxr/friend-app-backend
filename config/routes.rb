Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :grievances, except: [:index]

  resources :users do
      get 'filed_grievances', to: 'grievances#filed_index'
      get 'received_grievances', to: 'grievances#received_index'
  end


  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
end
