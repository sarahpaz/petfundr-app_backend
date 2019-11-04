class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :image, :cause, :goal
end
