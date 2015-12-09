Rails.application.routes.draw do
  resources :users, except: [:new, :edit]
  resources :fans
  resources :bands
  use_doorkeeper
end
