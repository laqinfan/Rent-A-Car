# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#                     cars GET    /cars(.:format)                cars#index
#                          POST   /cars(.:format)                cars#create
#                  new_car GET    /cars/new(.:format)            cars#new
#                 edit_car GET    /cars/:id/edit(.:format)       cars#edit
#                      car GET    /cars/:id(.:format)            cars#show
#                          PATCH  /cars/:id(.:format)            cars#update
#                          PUT    /cars/:id(.:format)            cars#update
#                          DELETE /cars/:id(.:format)            cars#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
#                   logins GET    /logins(.:format)              logins#index
#                          POST   /logins(.:format)              logins#create
#                new_login GET    /logins/new(.:format)          logins#new
#               edit_login GET    /logins/:id/edit(.:format)     logins#edit
#                    login GET    /logins/:id(.:format)          logins#show
#                          PATCH  /logins/:id(.:format)          logins#update
#                          PUT    /logins/:id(.:format)          logins#update
#                          DELETE /logins/:id(.:format)          logins#destroy
#                registers GET    /registers(.:format)           registers#index
#                          POST   /registers(.:format)           registers#create
#             new_register GET    /registers/new(.:format)       registers#new
#            edit_register GET    /registers/:id/edit(.:format)  registers#edit
#                 register GET    /registers/:id(.:format)       registers#show
#                          PATCH  /registers/:id(.:format)       registers#update
#                          PUT    /registers/:id(.:format)       registers#update
#                          DELETE /registers/:id(.:format)       registers#destroy
#                    users GET    /users(.:format)               users#index
#               new_author GET    /users/new(.:format)           users#new
#                          POST   /users(.:format)               users#create
#                     user GET    /users/:id(.:format)           users#show
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                          PUT    /users/:id(.:format)           users#update
#                          PATCH  /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
#               pages_home GET    /pages/home(.:format)          pages#home
#              pages_login GET    /xxxx(.:format)                pages#xxxx
#           pages_register GET    /xxxx(.:format)                pages#xxxx
#                pages_bob GET    /bob(.:format)                 pages#bob
#              pages_alice GET    /alice(.:format)               pages#alice
#                     root GET    /                              pages#home
# 

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'pages/home', to: 'pages#home', as: 'pages_home'

  root to: 'pages#home'
  
  resources :cars
  
  get '/browse-vehicles', to: 'cars#browse', as: 'browse_vehicles'
  get '/vehicles/:id/details', to: 'cars#details', as: 'car_details'
  
  devise_for :users

end
