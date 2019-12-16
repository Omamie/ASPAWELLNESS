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
  get "/results", to: "pages#results"
  resource :autocomplete, only: :show
  get 'pages/help', to: 'pages#help'
  get 'pages/bookings', to: 'pages#bookings'

  # /centers
  resources :centers, except: :index do
    # /centers/:center_id/treatments/new
    resources :treatments, only: [:new, :create]
  end

  # /treatments/
  resources :treatments, only: [:index, :edit, :update, :destroy] do
    # /treatments/:treatment_id/bookings/new
    resources :bookings, only: [:new, :create]
  end

  # /bookings/
  resources :bookings, only: [:index] do
    # /bookings/:booking_id/payments/new
    resources :payments, only: [:new, :order_confirm]
  end
end


