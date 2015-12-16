Rails.application.routes.draw do
  use_doorkeeper


  resources :users, except: [:new, :edit]
  resources :fans
  resources :bands
  get '/me', to: 'users#me'
  put '/me/band', to: 'bands#update'

  resources :concerts do
    # resources :pledges
    member do
      put '/vote', to: "concerts#vote"
      delete '/unvote', to: "concerts#unvote"
    end
  end
end
