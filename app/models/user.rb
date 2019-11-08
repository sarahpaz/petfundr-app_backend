class User < ApplicationRecord
	has_many :pets
	has_many :donations

	validates :username, presence: true
	validates :username, uniqueness: true

	has_secure_password
end
