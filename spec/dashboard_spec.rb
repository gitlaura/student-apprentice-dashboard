require 'dashboard.rb'

describe "Dashboard" do
	before(:each) do 
		@dashboard = Dashboard.new
		@dashboard.student.first_name = "First"
		@dashboard.student.last_name = "Last"
	end

	it "gets a student's name and displays welcome message " do
		expect(@dashboard).to receive(:update_student)
		expect(@dashboard).to receive(:give)
		@dashboard.display_welcome_message
	end

	it "runs the menu or action" do 
		expect(@dashboard).to respond_to(:run)
	end

	it "exits program" do 
		expect(@dashboard).to receive(:give)
		@dashboard.exit
	end
end