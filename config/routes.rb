Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/index'
  get 'shoes/index'
  get 'shoes/show'
  get 'shoes/new'
  get 'shoes/create'
  get 'shoes/edit'
  get 'shoes/update'
  get 'shoes/destroy'
  devise_for :users
  root to: "shoes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :shoes do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :destroy]
end
