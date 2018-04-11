Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'pages/home', to: 'pages#home', as: 'pages_home'

  # root to: 'pages#home'
  
devise_for :users
resources :logins
resources :registers




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



get 'pages/home', to: 'pages#home', as: 'pages_home'
get 'bob', to: 'pages#bob', as: 'pages_bob'
get 'alice', to: 'pages#alice', as: 'pages_alice'


root to: 'pages#home'



# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

