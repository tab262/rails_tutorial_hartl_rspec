require 'rails_helper'

RSpec.describe Micropost, type: :model do
	it "has a valid factory" do
		expect(FactoryGirl.create(:micropost)).to be_valid
	end

	it "is valid when it has 140 characters" do
		expect(FactoryGirl.create(:micropost,content: ('a'*140))).to be_valid
	end

	it "is invalid when it has more than 140 characters" do
		expect(FactoryGirl.build(:micropost,content: ('a'*141))).to be_invalid 
	end

end
