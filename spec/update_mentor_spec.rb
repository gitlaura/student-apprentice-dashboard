require 'update_mentor.rb'

describe "Update Mentor" do 
	before (:each) do 
		@dashboard = Dashboard.new
		@update_mentor = UpdateMentor.new(@dashboard)
	end

	it "asks for the mentor's name with run" do 
		@update_mentor.should_receive(:get_name).twice {"first"}
		@update_mentor.run
	end

	it "makes sure input is valid" do 
		@update_mentor.should_receive(:give).once
		@update_mentor.should_receive(:receive) {"Name"}
		expect(@update_mentor.get_name("first")).to eq("Name")
	end
end