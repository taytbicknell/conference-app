Rails.application.routes.draw do
  namespace :api do
    get "/speakers" => "speakers#index"
    get "/speakers/:id" => "speakers#show"
    post "/speakers" => "speakers#create"
    patch "/speakers/:id" => "speakers#update"
    delete "/speakers/:id" => "speakers#destroy"
  end
end
