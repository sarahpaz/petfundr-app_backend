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
end
