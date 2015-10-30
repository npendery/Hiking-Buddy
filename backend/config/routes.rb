Rails.application.routes.draw do
  root "hikes#index"

  resources :hikes
end
