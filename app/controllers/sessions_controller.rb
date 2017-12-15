class SessionsController < ApplicationController
	def new
	end

	def create
		if login(params[:email], params[:password])
			flash[:success] = 'Bienbenido!'
			redirect_to root_path
		else
			flash.now[:warning] = 'E-mail o password es incorrecto.'
			render 'new'
		end
	end

	def destroy
		logout
		flash[:success] = 'See you!'
		redirect_to log_in_path
	end

end
