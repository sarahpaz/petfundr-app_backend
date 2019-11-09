class Api::V1::DonationsController < ApplicationController
	def index
		if logged_in?
			@donations = current_user.donations
			donations_json = DonationSerializer.new(@donations)
			render json: 	donations_json
		else
			render json: {
				error: "Login to view your donations"
			}
		end
	end

	def show
		@donation = Donation.find_by(id: params[:id])
		donation_json = DonationSerializer.new(@donation)
		render json: donation_json
	end
end
