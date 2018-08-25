Rails.application.routes.draw do
  get 'raffles/create'
  resources :products do
    resources :raffles, only: :create
  end
  resources :raffles, only: :index
  root to: 'products#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
