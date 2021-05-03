Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	#Root doesn't need to be defined in the controller. Anything with a / does.
  root 'chatroom#home'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  #Mounting the websocket route
  #Below is an example of how it ought to be.
  mount ActionCable.server, at: '/cable'
end
