class User < ActiveRecord::Base
	has_many :decks 
	has_many :rounds 
	has_many :guesses, through: :rounds 

	has_secure_password  
	validates_presence_of :password, :on => :create
	validates_confirmation_of :password
	validates_uniqueness_of :email, :case_sensitive => false
end
