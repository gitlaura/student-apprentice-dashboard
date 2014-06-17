require 'message_center.rb'

describe "MessageCenter" do
	before(:each) do 
		@message_center = MessageCenter.new
	end

	it "gets a menu selection" do
		expect(@message_center).to respond_to(:get_menu_selection)
	end

	it "gets information" do
		expect(@message_center).to respond_to(:get_info)
	end

	it "asks for a users name" do
		expect(@message_center).to respond_to(:get_first_name)
		expect(@message_center).to respond_to(:get_last_name)
	end

	it "displays the welcome message" do
		expect(@message_center).to respond_to(:welcome_message)
	end

	it "displays an exit message" do 
		expect(@message_center).to respond_to(:exit)
	end

	it "displays error if selection is not an integer" do
		expect(@message_center).to respond_to(:display_invalid_selection_message)
	end

	it "displays error if selection is not an string" do
		expect(@message_center).to respond_to(:display_invalid_string_message)
	end

	it "displays the invalid selection message" do
		expect(@message_center).to respond_to(:display_option_not_available_message)
	end

	it "displays menus" do
		expect(@message_center).to respond_to(:display_menu)
	end

	it "creates the main menu" do
		expect(@message_center.create_menu(1).to_s).to include("Main Menu")
	end

	it "creates the student account menu" do
		expect(@message_center.create_menu(2).to_s).to include("Student Account Menu")
	end
end