require 'dashboard.rb'

describe "Dashboard" do
	before(:each) do 
		@dashboard = Dashboard.new
		@dashboard.student.first_name = "First"
		@dashboard.student.last_name = "Last"
	end

	it "displays welcome message" do
		@dashboard.message_center.should_receive(:welcome_message)
		@dashboard.display_welcome_message
	end

	it "gets a first name" do 
		@dashboard.message_center.should_receive(:get_name_message)
		@dashboard.message_center.should_receive(:get_info) {"first"} 
		expect(@dashboard.get_name("student", "first")).to eq("First")
	end

	it "returns false if string is not valid" do
		expect(@dashboard.valid_string?("lau/a")).to eq(false)
		expect(@dashboard.valid_string?("")).to eq(false)
	end

	it "runs the menu or action" do 
		expect(@dashboard).to respond_to(:run)
	end

	it "exits program" do 
		@dashboard.message_center.should_receive(:exit)
		@dashboard.exit
	end
end