Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'
  resources :centers, only: [:index, :show ] do
  resources :bookings, only: :new
end
end
