Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'
  resources :centers, except: :index do
    resources :bookings, only: :new
end
 resources :searches, only: :index, path: :search
 resources :bookings, only: :index

 get 'pages/help', to: 'pages#help'
end

