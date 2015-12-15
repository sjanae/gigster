Rails.application.routes.draw do
   use_doorkeeper


    resources :users, except: [:new, :edit]
    resources :fans
    resources :bands
    get '/me', to: 'users#me' 


  resources :concerts do
    resources :pledges
  end

end
