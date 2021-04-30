class ChatroomController < ApplicationController
	before_action :require_user

	def home
	@messages = Message.all
	@message = Message.new
	end


	def create
		#I need to create an add function, then force it to trigger a refresh
		@message = Message.new(set_params)
		@message.user = current_user
		if @message.save
			redirect_to root_path
		else
			flash[:error] = "Error sending message"
			redirect_to root_path
		end
	end

	def require_user
		#basically, if a user is not logged in, we display a message and redirect them
		if !logged_in?
			flash[:error] = "You must be logged in to perform that action"
			redirect_to login_path
		end
	end


	protected

	def set_params
		# Set accepted params. Perhaps might not need user_id, or set it elsewhere
		params.require(:message).permit(:body, :user_id)
	end


end
