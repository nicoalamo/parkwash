Rails.application.routes.draw do

  resources :prices
  resources :vehicle_sizes
  resources :wash_types
  resources :places
  resources :reconciliations
  resources :credit_notes
  resources :receipts
  resources :payments
  resources :washes
  resources :vehicles
  devise_for :washers
  # devise_for :users

  root to: 'pages#index'

  devise_for :users, controllers: {
          registrations: 'users/registrations'
        }





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
