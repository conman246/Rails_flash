require 'rails_helper'

describe "user" do 
	let(:user) { User.new(:name => "Bruce Lee", :email => "bruce@mail.com", :password => "password") }
end

feature "the homepage" do 
	scenario "a user can visit the home page" do 
		visit "/"
	end
end