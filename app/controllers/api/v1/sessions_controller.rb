class Api::V1::SessionsController < ApplicationController
	def create
		# byebug
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			render json: UserSerializer.new(@user), status: :ok
		else
			render json: {
				error: "Invalid Credentials"
			}
		end
	end

	def get_current_user
		if logged_in?
		user_json = UserSerializer.new(current_user)
		render json: user_json
		else
			render json: {
				error: "No logged in user"
			}
		end
	end

	def destroy
		session.clear
		render json: {
			notice: "Successful logout"
		}
	end
end
