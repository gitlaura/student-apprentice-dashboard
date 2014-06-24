require 'student.rb'

describe "Student" do 
	before (:each) do 
		@student = Student.new
		@student.first_name = "First"
		@student.last_name = "Last"
	end

	it "creates the correct first and last name" do  
		expect(@student.first_name).to eq("First")
		expect(@student.last_name).to eq("Last")
	end
end
