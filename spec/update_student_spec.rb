require 'update_student.rb'

describe "Update Student" do 
	before (:each) do 
		@dashboard = Dashboard.new
		@update_student = UpdateStudent.new(@dashboard)
	end

	it "asks for the student's name with run" do 
		@update_student.should_receive(:get_name).twice {"first"}
		@update_student.run
	end

	it "makes sure input is valid" do 
		@update_student.should_receive(:give).once
		@update_student.should_receive(:receive) {"Name"}
		expect(@update_student.get_name("first")).to eq("Name")
	end
end