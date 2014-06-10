require 'dashboard.rb'

describe "Opening the student Dashboard" do
	it "saves the student's first and last name" do
		dashboard = Dashboard.new
		expect(dashboard.student_first_name).to be_a(String)
		expect(dashboard.student_last_name).to be_a(String)
	end

	it "cannot have a nil or blank student" do
		dashboard = Dashboard.new
		expect(dashboard.student_first_name.length).to be > 0
		expect(dashboard.student_last_name.length).to be > 0		
	end

	it "creates messages" do
		dashboard = Dashboard.new
		dashboard.welcome
		expect(dashboard.output_message).to be_a(String)
	end
end

describe "When a user selects 5" do
	it "the application closes" do
		dashboard = Dashboard.new
		dashboard.selection_action("5")
		expect(dashboard.output_message).to eq("Goodbye!")
	end
end