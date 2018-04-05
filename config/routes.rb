Rails.application.routes.draw do
  
  devise_for :users
resources :logins
resources :registers

get 'users', to: 'users#index', as: 'users'
get 'users/new',to: 'users#new', as: 'new_author'
post 'users', to: 'users#create'
get 'users/:id', to: 'users#show', as: 'user'
get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
put 'users/:id', to: 'users#update'
patch 'users/:id',to: 'users#update'
delete 'users/:id', to: 'users#destroy'

get 'pages/home', to: 'pages#home', as: 'pages_home'
get 'xxxx',to: 'pages#xxxx', as: 'pages_login'
get 'xxxx', to: 'pages#xxxx', as: 'pages_register'
get 'bob', to:'pages#bob', as: 'pages_bob'
get 'alice', to: 'pages#alice', as: 'pages_alice'

root to: 'pages#home'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
