Rails.application.routes.draw do
  use_doorkeeper

  resources :users, except: [:new, :edit]
  resources :fans
  resources :bands do
    member do
      put '/fan', to: 'bands#fan'
      delete '/unfan', to: 'bands#fan'
    end
  end
  get '/me', to: 'users#me'
  put '/me/band', to: 'bands#update'
  get '/me/band', to: 'bands#show'
  put 'me/fan', to: 'fans#update'
  get 'me/fan', to: 'fans#show'

  resources :concerts do
    member do
      put '/pledge', to: "concerts#pledge"
      delete '/unpledge', to: "concerts#unpledge"
    end
  end
end
