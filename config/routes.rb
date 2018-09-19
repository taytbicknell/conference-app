Rails.application.routes.draw do
  
  # namespace :api do
  #   get 'speakers/index'
  #   get 'speakers/show'
  #   get 'speakers/create'
  #   get 'speakers/update'
  #   get 'speakers/destroy'
  # end

  namespace :api do
    get "/speakers" => "speakers#index"
    get "/speakers/:id" => "speakers#show"
    post "/speakers" => "speakers#create"
    patch "/speakers/:id" => "speakers#update"
    delete "/speakers/:id" => "speakers#destroy"
    
    get "/meetings" => "meetings#index"
    get "/meetings/:id" => "meetings#show"
    post "/meetings" => "meetings#create"
    patch "/meetings/:id" => "meetings#update"
    delete "/meetings/:id" => "meetings#destroy"

    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    post "/sessions" => "sessions#create"

  end

end
