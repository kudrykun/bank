Rails.application.routes.draw do
  root 'dashboard#index'
  resources :operations
  resources :accounts
  resources :holders
  devise_for :operators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
