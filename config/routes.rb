Rails.application.routes.draw do
	#Root doesn't need to be defined in the controller. Anything with a / does.
  root 'chatroom#home'
  get 'login', to: 'sessions#login'
end
