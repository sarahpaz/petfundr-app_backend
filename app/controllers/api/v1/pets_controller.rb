class Api::V1::PetsController < ApplicationController
	def index
		@pets = Pet.all
		pets_json = PetSerializer.new(@pets)
		render json: pets_json
	end

	def show
		@pet = Pet.find_by(id: params[:id])
		pet_json = PetSerializer.new(@pet)
		render json: pet_json
	end
end
