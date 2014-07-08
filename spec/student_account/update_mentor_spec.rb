require 'student_account/update_mentor.rb'

describe "Update Mentor" do 
	before (:each) do 
		@dashboard = Dashboard.new
		@update_mentor = UpdateMentor.new(@dashboard)
	end

	it "asks for the mentor's name with run" do 
		expect(@update_mentor).to receive(:get_name).twice {"first"}
		@update_mentor.run
	end

	it "makes sure input is valid" do 
		expect(@update_mentor).to receive(:give).once
		expect(@update_mentor).to receive(:receive) {"Name"}
		expect(@update_mentor.get_name("first")).to eq("Name")
	end
end