Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'
  resources :centers do
  resources :bookings, only: :new
  resources :treatments, except: [:show]
end
 resources :searches, only: :index, path: :search
end
