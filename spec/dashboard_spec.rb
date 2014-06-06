require 'dashboard.rb'

describe "Running the student dashboard" do
	it "saves first name" do
		student = Student.new
		expect(student.first_name).to eq("Laura")
	end
	it "saves last name" do
		student = Student.new
		expect(student.last_name).to eq("Rokita")
	end
end