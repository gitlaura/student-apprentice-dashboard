require 'view_student.rb'

describe "View Student" do  
	before(:each) do   
		@dashboard = Dashboard.new
		@view_student = ViewStudent.new(@dashboard)
		@view_student.first_name = "First"
		@view_student.last_name = "Last"
	end

	it "saves the student's first name" do 
		expect(@view_student.first_name).to eq("First")
	end

	it "runs a method that displays the student's name" do 
		@view_student.should_receive(:give).once
		@view_student.run
	end

	it "returns back to student account menu" do 
		@view_student.should_receive(:display_name).once
		expect(@view_student.run).to eq(BackToStudentAccountMenu)
	end
end