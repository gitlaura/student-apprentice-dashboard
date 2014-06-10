require 'student.rb'

describe "When student is initialized" do 
	it "gets a first name and a last name" do
		student = Student.new("Laura", "Rokita")
		expect(student.student_first_name).to eq("Laura")
		expect(student.student_last_name).to eq("Rokita")
	end


end