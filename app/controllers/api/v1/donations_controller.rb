class Api::V1::DonationsController < ApplicationController
	def index
		donations = Donation.all
		render json: donations
	end

	def show
		donation = Donation.find_by(id: params[:id])
		render json: donation
	end
end
