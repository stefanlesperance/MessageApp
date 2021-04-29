class User < ApplicationRecord
	validates :username, uniqueness: { case_sensitive: false}, 
				presence: true, 
				length: { minimum: 3, maximum: 25 }

	has_secure_password


end
