class Api::V1::PetsController < ApplicationController
	def index
		if logged_in?
			@pets = Pet.all
			pets_json = PetSerializer.new(@pets)
			render json: pets_json
		else
			render json: {
				error: "Login to view pets."
			}
		end
	end



	def show
		@pet = Pet.find_by(id: params[:id])
		pet_json = PetSerializer.new(@pet)
		render json: pet_json
	end
end
