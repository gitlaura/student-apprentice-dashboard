require 'student_account/update_student.rb'

describe "Update Student" do 
	before (:each) do 
		@dashboard = Dashboard.new
		@update_student = UpdateStudent.new(@dashboard)
	end

	it "asks for the student's name with run" do 
		expect(@update_student).to receive(:get_name).twice {"first"}
		@update_student.run
	end

	it "makes sure input is valid" do 
		expect(@update_student).to receive(:give).once
		expect(@update_student).to receive(:receive) {"Name"}
		expect(@update_student.get_name("first")).to eq("Name")
	end
end