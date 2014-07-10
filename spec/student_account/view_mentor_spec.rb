require 'student_account/view_mentor.rb'

describe "View Mentor" do  
	before(:each) do   
		@dashboard = Dashboard.new
		@view_mentor = ViewMentor.new(@dashboard)
	end

	it "saves the student's first name" do 
		@view_mentor.first_name = "First"
		@view_mentor.last_name = "Last"
		expect(@view_mentor.first_name).to eq("First")
	end

	it "runs a method that displays the student's name" do 
		@view_mentor.first_name = "First"
		@view_mentor.last_name = "Last"
		expect(@view_mentor).to receive(:give).once
		@view_mentor.run
	end

	it "returns back to student account menu" do 
		@view_mentor.first_name = "First"
		@view_mentor.last_name = "Last"
		expect(@view_mentor).to receive(:display_name).once
		expect(@view_mentor.run).to eq(BackToStudentAccountMenu)
	end

	it "returns Add Mentor if names are blank" do 
		expect(@view_mentor).to receive(:give)
		expect(@view_mentor.run).to eq(AddMentorMenu)
	end
end