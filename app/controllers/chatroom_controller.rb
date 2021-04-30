class ChatroomController < ApplicationController
	before_action :require_user

	def home
	@messages = Message.all
	end

	def require_user
		#basically, if a user is not logged in, we display a message and redirect them
		if !logged_in?
			flash[:error] = "You must be logged in to perform that action"
			redirect_to login_path
		end
	end


end
