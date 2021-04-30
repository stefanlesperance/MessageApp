module ApplicationHelper

	def logged_in?
		## !! plus variable = turns it into a boolean
		!!current_user
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
