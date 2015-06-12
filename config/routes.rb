Rails.application.routes.draw do
  root 'marks#index'
  resources :marks, only: [:index, :new, :create, :update]

  get '/login', to: 'sessions#new', as: :login
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#failure'
  delete 'logout', to: 'sessions#destroy'
end
