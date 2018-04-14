Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'pages/home', to: 'pages#home', as: 'pages_home'

  # root to: 'pages#home'

devise_for :users
resources :logins
resources :registers


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
