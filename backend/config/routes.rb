Rails.application.routes.draw do
  jsonapi_resources :hikes

  namespace :api do
    namespace :v1 do
      jsonapi_resources :hikes
    end
  end
end
