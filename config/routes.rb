Rails.application.routes.draw do
  get 'payments/new'
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'

  resources :centers, except: :index do
    resources :treatments, except: [:show] do
      resources :bookings, only: [:index, :new, :create] do
        resources :payments, only: [:new, :order_confirm] do
          resources :order_confirmation, only: [:show]
        end
        end
      end
    end


  resources :bookings, only: :index
  resources :searches, only: :index, path: :search
 resources :searches, only: :index, path: :search
 get "/results", to: "pages#results"
 resource :autocomplete, only: :show
 get 'pages/help', to: 'pages#help'
  get 'pages/bookings', to: 'pages#bookings'
end
