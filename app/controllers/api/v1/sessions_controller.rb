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
		curret_user_json = UserSerializer.new(current_user)
		render json: current_user_json
		else
			render json: {
				error: "No one logged in"
			}
		end
	end

	def destroy
		session.clear
		render json: {
			notice: "succefully"
		}
	end
end
