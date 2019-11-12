class Api::V1::UsersController < ApplicationController
	def index
		@users = User.all
		users_json = UserSerializer.new(@users)
		render json: users_json
	end

	def show
		@user = User.find_by(id: params[:id])
		user_json = UserSerializer.new(@user)
		render json: user_json
	end

	def create
		@user = User.new(user_params)
		# byebug
		if @user.save
			session[:user] = @user.id
			render json: UserSerializer.new(@user), status: :created
		else
      render json: {
				error: @user.errors.full_messages.to_sentence
			}, status: :unprocessable_entity
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
