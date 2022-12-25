Rails.application.routes.draw do
  get 'featured/home'
  resources :coupans
  resources :places
  get 'user_profile/show'
  get 'user_profile/edit'
  resources :offers
  get 'main/home'
  get 'main/index'
  resources :categories
get '/places_get_regions', to: 'places#get_regions' 
get '/places_get_cities', to: 'places#get_cities' 
end
