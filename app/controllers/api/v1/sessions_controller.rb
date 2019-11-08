class Api::V1::SessionsController < ApplicationController
	def create
		# byebug
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			render json: @user
		else
			render json: {
				error: "Invalid Credentials"
			}
		end
	end

	def get_current_user
		if logged_in?
			render json: current_user
		else
			render json: {
				error: "No one logged in"
			}
		end
	end
end
