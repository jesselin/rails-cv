class User < ActiveRecord::Base
	validates :first_name, :last_name, :presence => true, length: { minimum: 2 }
	validates :email_address, presence:true
	validates :password, :presence => true, length: { minimum: 6 }
	has_many :posts
end
