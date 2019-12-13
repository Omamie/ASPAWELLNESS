Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'

  resources :centers, except: :index do
  resources :treatments, except: [:show] do
  resources :bookings, only: [:index, :new, :create]
end
end

  resources :bookings, only: :index
  resources :searches, only: :index, path: :search

 get 'pages/help', to: 'pages#help'
  get 'pages/bookings', to: 'pages#bookings'
end

