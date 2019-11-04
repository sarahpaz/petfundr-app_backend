class DonationSerializer < ActiveModel::Serializer
  attributes :id, :amount, :message
end
