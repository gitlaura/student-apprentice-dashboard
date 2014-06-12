require 'student.rb'

describe "Student" do 
	before(:each) do
		@student = Student.new("Laura", "Rokita")
	end

	it "gets a first name" do
		expect(@student.student_first_name).to eq("Laura")
	end

	it "gets a last name" do
		expect(@student.student_last_name).to eq("Rokita")
	end
end
