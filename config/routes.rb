Rails.application.routes.draw do
   use_doorkeeper


    resources :users, except: [:new, :edit]
    resources :fans
    resources :bands
    get '/me', to: 'users#me' 


  resources :concerts do
    # resources :pledges
    member do
      put '/upvote', to: "concerts#upvote"
      delete '/delete_vote', to: "concerts#delete_vote"
  end
end

end
