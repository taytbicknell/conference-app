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

    get "/topics" => "topics#index"
    get "/topics/:id" => "topics#show"
    post "/topics" => "topics#create"    
    patch "/topics/:id" => "topics#update"
    delete "/topics/:id" => "topics#destroy"

    get "/meeting_topics" => "meeting_topics#index"
    get "/meeting_topics/:id" => "meeting_topics#show"
    post "/meeting_topics" => "meeting_topics#create"
    patch "/meeting_topics/:id" => "meeting_topics#update"
    delete "/meeting_topics/:id" => "meeting_topics#destroy"
  end

end
