require 'dashboard.rb'

describe "Dashboard" do
	before(:each) do 
		@dashboard = Dashboard.new
		@dashboard.student.first_name = "First"
		@dashboard.student.last_name = "Last"
	end

	it "gets a first name" do 
		@dashboard.message_center.should_receive(:get_first_name)
		@dashboard.should_receive(:get_valid_info) {"first"}
		expect(@dashboard.get_first_name("student")).to eq("First")
	end

	it "gets a last name" do 
		@dashboard.message_center.should_receive(:get_last_name)
		@dashboard.should_receive(:get_valid_info) {"last"}
		expect(@dashboard.get_last_name("student")).to eq("Last")
	end

	it "gets valid info input" do
		@dashboard.message_center.should_receive(:get_info) {"first"}
		@dashboard.get_valid_info
	end

	it "returns false if string is not valid" do
		expect(@dashboard.valid_string?("lau/a")).to eq(false)
		expect(@dashboard.valid_string?("")).to eq(false)
	end

	it "displays welcome message" do
		@dashboard.message_center.should_receive(:welcome_message)
		@dashboard.display_welcome_message
	end

	it "returns the correct menu number" do 
		expect(@dashboard.get_menu_number(:main_menu)).to eq(1)
		
	end

	it "gets valid menu selection" do
		@dashboard.message_center.should_receive(:display_menu)
		@dashboard.message_center.should_receive(:get_menu_selection) {3}
		expect(@dashboard.get_valid_menu_selection(1)).to eq(3) 
	end

	it "makes menu selection and returns next move" do
		expect(@dashboard.make_selection(1,5)).to eq(:exit)
	end

	it "returns 'Invalid' if make move is 3 of Main Menu" do 
		expect(@dashboard.make_selection(1, 3)).to eq(:invalid)
	end

	it "displays option not available message" do 
		@dashboard.message_center.should_receive(:display_option_not_available_message)
		@dashboard.option_not_available
	end

	it "take the correct action based on selection" do
		@dashboard.message_center.should_receive(:display_name)
		expect(@dashboard.take_action(:view_student)).to eq(:back_to_student_account_menu)
	end

	it "selects the correct method to take action" do
		expect(@dashboard).to respond_to(:view_mentor)
		expect(@dashboard).to respond_to(:update_mentor)
		expect(@dashboard).to respond_to(:view_student)
		expect(@dashboard).to respond_to(:update_student)
	end

	it "update mentor asks for a new first and last name" do 
		@dashboard.should_receive(:get_first_name)
		@dashboard.should_receive(:get_last_name)
		@dashboard.update_mentor
	end

	it "exits program" do 
		@dashboard.message_center.should_receive(:exit)
		@dashboard.exit_program
	end
end