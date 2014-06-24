require 'mentor.rb'

describe "Mentor" do 
	before (:each) do 
		@mentor = Mentor.new
		@mentor.first_name = "First"
		@mentor.last_name = "Last"
	end

	it "creates the correct first and last name" do  
		expect(@mentor.first_name).to eq("First")
		expect(@mentor.last_name).to eq("Last")
	end
end