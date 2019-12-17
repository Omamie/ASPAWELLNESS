Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'


  resources :centers, except: :index do
    resources :bookings, only: :index # calendar view
    resources :treatments, only: [:new, :create]
  end

  resources :treatments, only: [:index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show] do
    resources :payments, only: :new

    resources :reviews, only: [:new, :create]
  end

  resource :autocomplete, only: :show
  resources :searches, only: :index, path: :search

  get "/results", to: "pages#results"

  get 'pages/help', to: 'pages#help'
end


