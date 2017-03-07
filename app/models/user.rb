class User < ApplicationRecord
	has_secure_password
	# This method will automatically add 'password' atrribute to model User
	# has_secure_token

	validates :name, presence: true
	has_many :posts, dependent: :destroy
end
