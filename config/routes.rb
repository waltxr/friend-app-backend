Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :grievances, except: [:index]
  resources :valid_points, except: [:index]

  resources :users, except: [:update, :destroy] do
      get 'filed_grievances', to: 'grievances#filed_index'
      get 'received_grievances', to: 'grievances#received_index'

      get 'awarded_valid_points', to: 'valid_points#awarded_index'
      get 'received_valid_points', to: 'valid_points#received_index'
  end


  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  put 'users/edit', to: 'users#update'
  delete 'users/delete', to: 'users#destroy'

end
