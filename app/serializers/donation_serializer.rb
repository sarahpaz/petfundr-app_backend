class DonationSerializer
  include FastJsonapi::ObjectSerializer
	attributes :amount, :message

	attribute :pet do |donation|
		{
			id: donation.pet_id,
		}
	end

	attribute :user do |donation|
		{
			id: donation.user_id,
		}
	end
end
