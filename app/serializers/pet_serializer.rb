class PetSerializer
  include FastJsonapi::ObjectSerializer
	attributes :name, :age, :image, :cause, :goal
	
	belongs_to :user, serializer: UserSerializer

	attribute :donations do |pet|
		pet.donations.map do |pet|
			{
				amount: pet.amount,
				message: pet.message
			}
		end
	end

	attribute :owner do |pet|
		{
			username: pet.user.username
		}
	end
end

