Rails.application.routes.draw do
  resources :concerts, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  resources :fans
  resources :bands
  use_doorkeeper
end
