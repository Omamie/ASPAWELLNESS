Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'
  resources :centers do
  resources :bookings, only: :new
end
 resources :searches, only: :index, path: :search
 get "/results", to: "pages#results"

 resource :autocomplete, only: :show
end
