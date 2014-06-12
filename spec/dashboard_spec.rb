require 'dashboard'

describe "Dashboard" do
	before(:each) do 
		@dashboard = Dashboard.new
	end

	it "gets the student's name" do 
		expect(@dashboard).to respond_to(:get_student_first_name)
		expect(@dashboard).to respond_to(:get_student_last_name)
	end

	it "displays welcome message" do
		expect(@dashboard).to respond_to(:display_welcome_message)
	end

	it "displays welcome message" do
		expect(@dashboard).to respond_to(:display_welcome_message)
	end

	it "gets valid info input" do
		expect(@dashboard).to respond_to(:get_valid_info)
	end

	it "gets valid menu selection" do
		expect(@dashboard).to respond_to(:get_valid_menu_selection)
	end

	it "can act on the main menu selection" do
		expect(@dashboard).to respond_to(:act_on_main_menu)
	end

	it "returns 'Exit' if make move is 5 on Main Menu" do 
		expect(@dashboard.act_on_main_menu(5, "Main")).to eq("Exit")
	end

	it "returns 'Invalid' if make move is 3 of Main Menu" do 
		expect(@dashboard.act_on_main_menu(3, "Main")).to eq("Invalid")
	end

	it "exits program" do 
		expect(@dashboard.exit_program).to eq("Goodbye!")
	end
end