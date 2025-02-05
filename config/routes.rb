
Rails.application.routes.draw do
  root 'trips#index'
  resources :reservations
  resources :trips
  resources :passengers
  resources :drivers
  resources :buses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
 get 'delete_all_passengers', to: 'passengers#delete_all', as: 'delete_all_passengers'

end

