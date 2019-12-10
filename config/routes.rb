Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings, only: [:create, :new ]
end
