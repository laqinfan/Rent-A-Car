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

  resources :testimonials
  root to: 'pages#home'

  devise_for :users
  resources :logins
  resources :registers
  resources :contracts
  resources :cars

  #All of Sheldon Ebron's Home Pages (Not used in most casses will probably delete later)
  #--------------------------------------------------------------
  get 'messaging/home', to: 'messages#home', as: 'messages_home'
  get 'communications/home', to: 'communications#home', as: 'communications_home'
  get 'conversations/home', to: 'conversations#home', as: 'conversations_home'

  #All of Sheldon Ebron's Index Pages
  #--------------------------------------------------------------
  get 'messaging', to: 'messages#index', as: 'messages'
  get 'communications', to: 'communications#index', as: 'communications'
  get 'conversations', to: 'conversations#index', as: 'conversations'

  #All of Sheldon Ebron's New Routes
  #--------------------------------------------------------------
  get 'messaging/new', to: 'messages#new', as: 'new_message'
  get 'communications/new', to: 'communications#new', as: 'new_communication'
  get 'conversations/new', to: 'conversations#new', as: 'new_conversation'

  #All of Sheldon Ebron's New Routes
  #--------------------------------------------------------------
  post 'messaging', to: 'messages#create'
  post 'communications', to: 'communications#create'
  post 'conversations', to: 'conversations#create'

  #All of Sheldon Ebron's Show/Find Routes
  #--------------------------------------------------------------
  get 'messaging/:id', to: 'messages#show', as: 'message'
  get 'communications/:id', to: 'communications#show', as: 'communication'
  get 'conversations/:id', to: 'conversations#show', as: 'conversation'

  #All of Sheldon Ebron's Show/Find Routes
  #--------------------------------------------------------------
  get 'messaging/:id/edit', to: 'messages#edit', as: 'edit_messages'
  get 'communications/:id/edit', to: 'communications#edit', as: 'edit_communications'
  get 'conversations/:id/edit', to: 'conversations#edit', as: 'edit_conversations'

  #All of Sheldon Ebron's Show/Find Routes
  #--------------------------------------------------------------
  put 'messaging/:id', to: 'messages#update'
  put 'communications/:id', to: 'communications#update'
  put 'conversations/:id', to: 'conversations#update'

  #All of Sheldon Ebron's update Routes
  #--------------------------------------------------------------
  patch 'messaging/:id', to: 'messages#update'
  patch 'communications/:id', to: 'communications#update'
  patch 'conversations/:id', to: 'conversations#update'

  #All of Sheldon Ebron's Destroy which connectes to controller but no new route
  #--------------------------------------------------------------
  delete 'messaging/:id', to: 'messages#destroy'
  delete 'communications/:id', to: 'communications#destroy'
  delete 'conversations/:id', to: 'conversations#destroy'
  #--------------------------------------------------------------
  
  get '/browse-vehicles', to: 'cars#browse', as: 'browse_vehicles'
  get '/vehicles/:id/details', to: 'cars#details', as: 'car_details'
  get '/my-contracts', to: 'contracts#mycontracts', as: 'my_contracts'
  get '/mytestimonial', to: 'testimonials#mytestimonial', as: 'my_testimonial'

  get 'profiles', to: 'profiles#index', as: 'profiles'
  get 'profiles/myprofile', to: 'profiles#myprofile', as: 'my_profile'
  get 'profiles/new', to: 'profiles#new', as: 'new_profile'
  post 'profiles', to: 'profiles#create'
  get 'profiles/:id', to: 'profiles#show', as: 'profile'
  #get 'profiles/:id', to: 'profiles#show', as: 'profile'
  #get 'profiles/:id', to: 'users#show', as: 'profile'
  get 'profiles/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  put 'profiles/:id', to: 'profiles#update'
  patch 'profiles/:id', to: 'profiles#update'

  get 'paypals', to: 'paypals#index', as: 'paypals'
  get 'paypals/mypaypal', to: 'paypals#mypaypal', as: 'my_paypal'

  get 'paypals/new', to: 'paypals#new', as: 'new_paypal'
  post 'paypals', to: 'paypals#create'
  get 'paypals/:id', to: 'paypals#show', as: 'paypal'
  get 'paypals/:id/edit', to: 'paypals#edit', as: 'edit_paypal'
  put 'paypals/:id', to: 'paypals#update'
  patch 'paypals/:id', to: 'paypals#update'

end
