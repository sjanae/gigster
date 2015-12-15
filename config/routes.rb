Rails.application.routes.draw do
   use_doorkeeper


    resources :users, except: [:new, :edit]
    resources :fans
    resources :bands


  resources :concerts do
    resources :pledges, only: [:new, :create, :update, :destroy]
  end

end


# nested routes = http..something.com/concerts/concert_id(number)/pledges


# something.com/fans/1/pledges
# something.com/bands/1/concerts
