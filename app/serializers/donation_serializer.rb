class DonationSerializer
  include FastJsonapi::ObjectSerializer
	attributes :amount, :message
end
