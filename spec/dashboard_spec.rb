require 'dashboard.rb'

describe "Dashboard" do
	before(:each) do 
		@dashboard = Dashboard.new
		@student = @dashboard.create_student("First", "Last")
	end

	it "gets the student's name" do 
		expect(@dashboard).to respond_to(:get_student_first_name)
		expect(@dashboard).to respond_to(:get_student_last_name)
	end

	it "creates a student" do 
		expect(@dashboard).to respond_to(:create_student)
		expect(@student.student_first_name).to eq("First")
		expect(@student.student_last_name).to eq("Last")
	end

	it "displays welcome message" do
		expect(@dashboard).to respond_to(:display_welcome_message)
	end

	it "gets valid info input" do
		expect(@dashboard).to respond_to(:get_valid_info)
	end

	it "returns false if string is not valid" do
		expect(@dashboard.valid_string?("lau/a")).to eq(false)
		expect(@dashboard.valid_string?("")).to eq(false)
	end

	it "gets valid menu selection" do
		expect(@dashboard).to respond_to(:get_valid_menu_selection)
	end

	it "can act on the menu selection" do
		expect(@dashboard).to respond_to(:make_selection)
	end

	it "returns 'Exit' if make move is 5 on Main Menu" do 
		expect(@dashboard.make_selection(1, 5)).to eq(:exit)
	end

	it "returns 'Invalid' if make move is 3 of Main Menu" do 
		expect(@dashboard.make_selection(1, 3)).to eq(:invalid)
	end

	it "message center displays invalid selections" do 
		@dashboard.message_center.should_receive(:display_invalid_selection)
		@dashboard.option_not_available
	end

	it "exits program" do 
		@dashboard.message_center.should_receive(:exit)
		@dashboard.exit_program
	end
end