Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :centers, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :centers, only: [:show, :index]
end
