class SessionsController < ApplicationController
	def new
	end

	def login
		logged_in_redirect

	end


	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id 
			flash[:success] = "Logged in successfully."
			redirect_to root_path
		else
			flash.now[:error] = "Something went wrong"
			render 'login'
		end
	end


	def destroy
		session[:user_id] = nil
		flash[:success] = "Logged out"
		redirect_to login_path
	end


	protected

	def logged_in_redirect
		if logged_in?
			flash[:error] = "You are already logged in."
			redirect_to root_path
		end
	end





end
