Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home', as: 'pages_home'

  root to: 'pages#home'


end

