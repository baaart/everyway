Rails.application.routes.draw do
  root 'marks#index'
  resources :marks, only: [:index, :new, :create, :update]
end
