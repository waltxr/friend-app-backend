Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :grievances, except: [:index] do
    resources :comments, module: :grievances
  end

  resources :valid_points, except: [:index] do
    resources :comments, module: :valid_points
  end

  post 'groups/create', to: 'groups#create'
  get 'groups/:id', to: 'groups#show'
  get 'groups', to: 'groups#index'
  post 'groups/:id', to: 'groups#update'

  resources :comments do
    resources :comments, module: :comments
  end


  resources :lols, except: [:index]
  resources :proclamations, except: [:index]
  resources :quotes, except: [:index]
  resources :sources, except: [:index]

  resources :users, except: [:update, :destroy, :show] do
      get 'filed_grievances', to: 'grievances#filed_index'
      get 'received_grievances', to: 'grievances#received_index'

      get 'awarded_valid_points', to: 'valid_points#awarded_index'
      get 'received_valid_points', to: 'valid_points#received_index'

      get 'awarded_lols', to: 'lols#awarded_index'
      get 'received_lols', to: 'lols#received_index'

      get 'reported_proclamations', to: 'proclamations#reported_index'
      get 'received_proclamations', to: 'proclamations#received_index'

      get 'reported_quotes', to: 'quotes#reported_index'
      get 'received_quotes', to: 'quotes#received_index'

      get 'cited_sources', to: 'sources#cited_index'
      get 'received_sources', to: 'sources#received_index'
  end


  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  get 'users/user', to: 'users#user'
  get 'users/:id', to: 'users#show'
  post 'users/edit', to: 'users#update'
  delete 'users/delete', to: 'users#destroy'

end
