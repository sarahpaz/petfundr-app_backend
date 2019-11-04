class User < ApplicationRecord
	has_many :pets
	has_many :donations

	has_secure_password
end
