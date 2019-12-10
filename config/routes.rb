Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'customers/registrations'
  }
  root to: 'pages#home'

  resources :centers, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :centers, only: [:show, :index]

  resources :searches, only: :index, path: :search
end
