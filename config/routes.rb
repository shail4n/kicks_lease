Rails.application.routes.draw do
  get 'shoes/index'
  get 'shoes/show'
  get 'shoes/new'
  get 'shoes/create'
  get 'shoes/edit'
  get 'shoes/update'
  get 'shoes/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
