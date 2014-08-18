require 'rails_helper'

describe User do 
	it "has a name" do 
		FactoryGirl.create(:user, name: nil).should_not be_valid
	end

	it "has an email" do 
		FactoryGirl.create(:user, email: nil).should_not be_valid
	end

	it "has a password" do 
		FactoryGirl.create(:user, password: nil).should_not be_valid
	end
end
