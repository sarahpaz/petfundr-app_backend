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

		def create
		@donation = Donation.new(donation_params)
		# byebug
		if @donation.save
			session[:donation_id] = @donation.id
			render json: DonationSerializer.new(@donation), status: :created
		else
      render json: {
				error: @donation.errors.full_messages.to_sentence
			}, status: :unprocessable_entity
		end
	end

		private

	def donation_params
		params.require(:donation).permit(:amount, :message)
	end
end
