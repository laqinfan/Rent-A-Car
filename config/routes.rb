# == Route Map
#
#                   Prefix Verb   URI Pattern                     Controller#Action
#                     root GET    /                               pages#home
#                     cars GET    /cars(.:format)                 cars#index
#                          POST   /cars(.:format)                 cars#create
#                  new_car GET    /cars/new(.:format)             cars#new
#                 edit_car GET    /cars/:id/edit(.:format)        cars#edit
#                      car GET    /cars/:id(.:format)             cars#show
#                          PATCH  /cars/:id(.:format)             cars#update
#                          PUT    /cars/:id(.:format)             cars#update
#                          DELETE /cars/:id(.:format)             cars#destroy
#          browse_vehicles GET    /browse-vehicles(.:format)      cars#browse
#              car_details GET    /vehicles/:id/details(.:format) cars#details
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#            user_password PATCH  /users/password(.:format)       devise/passwords#update
#                          PUT    /users/password(.:format)       devise/passwords#update
#                          POST   /users/password(.:format)       devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#        user_registration PATCH  /users(.:format)                devise/registrations#update
#                          PUT    /users(.:format)                devise/registrations#update
#                          DELETE /users(.:format)                devise/registrations#destroy
#                          POST   /users(.:format)                devise/registrations#create
# 

Rails.application.routes.draw do
  resources :contracts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home', as: 'pages_home'

  
  resources :cars
  
  get '/browse-vehicles', to: 'cars#browse', as: 'browse_vehicles'
  get '/vehicles/:id/details', to: 'cars#details', as: 'car_details'
  
  devise_for :users

  get 'profiles', to: 'profiles#index', as: 'profiles'
  get 'profiles/new', to: 'profiles#new', as: 'new_profile'
  post 'profiles', to: 'profiles#create'
  get 'profiles/:id', to: 'profiles#show', as: 'profile'
  get 'profiles/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  put 'profiles/:id', to: 'profiles#update'
  patch 'profiles/:id', to: 'profiles#update'

  get 'paypals', to: 'paypals#index', as: 'paypals'
  get 'paypals/new', to: 'paypals#new', as: 'new_paypal'
  post 'paypals', to: 'paypals#create'
  get 'paypals/:id', to: 'paypals#show', as: 'paypal'
  get 'paypals/:id/edit', to: 'paypals#edit', as: 'edit_paypal'
  put 'paypals/:id', to: 'paypals#update'
  patch 'paypals/:id', to: 'paypals#update'

  root to: 'pages#home'
  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :contracts do
  #   member do
  #     post :update_status
  #   end
  # end


  # devise_for :users
  # resources :logins
  # resources :registers

  # get 'users', to: 'users#index', as: 'users'
  # get 'users/new',to: 'users#new', as: 'new_author'
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  # put 'users/:id', to: 'users#update'
  # patch 'users/:id',to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

end
