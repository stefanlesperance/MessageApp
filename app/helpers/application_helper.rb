module ApplicationHelper

	def logged_in?
		## !! plus variable = turns it into a boolean
		!!current_user
	end


	def require_user
		#basically, if a user is not logged in, we display a message and redirect them
		if !logged_in?
			flash[:alert] = "You must be logged in to perform that action"
			redirect_to login_path
		end
	end


	def flash_class(level)
	    case level
	    when :notice then "orange"
	    when :success then "success"
	    when :error then "error"
	    when :alert then "warning"
	    end
	 end
end
