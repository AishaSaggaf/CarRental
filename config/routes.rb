Rails.application.routes.draw do
  get 'cars/index'
  resources :cars, only: [:index] #URL /cars 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
