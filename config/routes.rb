Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'
  resources :centers, only: [:index, :show, :create, :new ] do
  resources :bookings, only: :new
end
 resources :searches, only: :index, path: :search
end
