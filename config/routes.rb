Rails.application.routes.draw do
  use_doorkeeper

  resources :users, except: [:new, :edit]
  resources :fans
  resources :concerts, only: [:index, :show]

 

  resources :bands do
    member do
      put '/fanship', to: 'bands#fanship'
      delete '/unfanship', to: 'bands#fanship'
    end
    resources :concerts do
      resources :pledges, except: [:edit, :destroy, :update]
    end
  end

  get '/me', to: 'users#me'
  put '/me/band', to: 'bands#update'
  get '/me/band', to: 'bands#show'
  put 'me/fan', to: 'fans#update'
  get 'me/fan', to: 'fans#show'


end
