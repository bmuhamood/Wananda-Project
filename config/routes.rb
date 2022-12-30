Rails.application.routes.draw do
  devise_for :users
  delete '/logout', to: 'sessions#destroy'
  root to: "home#index"
  get 'cities/index'
  get 'cities/create'
  get 'cities/show'
  get 'states/index'
  get 'states/create'
  get 'states/show'
  get 'countries/index'
  get 'countries/create'
  get 'countries/show'
  get 'featured/home'
  resources :coupans
  resources :places
  get 'user_profile/show'
  get 'user_profile/edit'
  resources :offers
  get 'main/home'
  get 'main/index'
  resources :categories
  resources :countries, only: [:index, :show, :create, :update]
  resources :states, only: [:index, :show, :create, :update]
  resources :cities, only: [:index, :show, :create, :update]
  get '/countries/:id', to: 'countries#show'
  get '/categories/:id', to: 'categories#show'
  get '/coupons', to: 'coupans#index'
  get '/stores', to: 'places#index'
  get '/offers', to: 'offers#index'
end
