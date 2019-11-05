class PetSerializer < ActiveModel::Serializer
	attributes :id, :name, :age, :image, :cause, :goal
	
	belongs_to :user
	has_many :donations
end
