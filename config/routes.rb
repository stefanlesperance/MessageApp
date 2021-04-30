Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	#Root doesn't need to be defined in the controller. Anything with a / does.
  root 'chatroom#home'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #Messages
  post 'message', to: 'chatroom#create'
end
