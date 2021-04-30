class MessagesController < ApplicationController
	before_action :require_user

	def require_user
		#basically, if a user is not logged in, we display a message and redirect them
		if !logged_in?
			flash[:alert] = "You must be logged in to perform that action"
			redirect_to login_path
		end
	end



	def create
		@message = current_user.messages.build(message_params)
		if @message.save
			redirect_to root_path
		end
	end


	private

	def message_params
		params.require(:message).permit(:body)
	end





end