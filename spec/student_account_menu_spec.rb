require 'student_account_menu.rb'

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

describe "Mentor" do 
	before (:each) do 
		@mentor = Mentor.new
		@mentor.first_name = "First"
		@mentor.last_name = "Last"
	end

	it "creates the correct first and last name" do  
		expect(@mentor.first_name).to eq("First")
		expect(@mentor.last_name).to eq("Last")
	end
end
