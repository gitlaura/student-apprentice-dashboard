require 'message_center.rb'

describe "MessageCenter" do
	before(:each) do 
		@message_center = MessageCenter.new
	end

	it "gets a menu selection" do
		@message_center.ui.should_receive(:receive)
		@message_center.get_menu_selection
	end

	it "gets information" do
		@message_center.ui.should_receive(:receive)
		@message_center.get_info
	end

	it "asks for a person's name" do
		@message_center.ui.should_receive(:give).twice
		@message_center.get_first_name("student")
		@message_center.get_last_name("mentor")
	end

	it "displays the welcome message" do
		@message_center.ui.should_receive(:give)
		@message_center.welcome_message("First", "Last")
	end

	it "displays an exit message" do 
		@message_center.ui.should_receive(:give)
		@message_center.exit
	end

	it "displays error if selection is not an integer" do
		@message_center.ui.should_receive(:give)
		@message_center.display_invalid_selection_message
	end

	it "displays error if selection is not an string" do
		@message_center.ui.should_receive(:give)
		@message_center.display_invalid_string_message
	end

	it "displays the option is not available message" do
		@message_center.ui.should_receive(:give)
		@message_center.display_option_not_available_message
	end

	it "displays not added yet message with correct thing" do
		@message_center.ui.should_receive(:give)
		@message_center.display_not_added_yet_message("thing")
	end

	it "displays a person's name" do
		@message_center.ui.should_receive(:give)
		@message_center.display_name("student", "First", "Last")
	end

	it "displays menus" do
		@message_center.ui.should_receive(:give)
		@message_center.display_menu(3)
	end

	it "creates the main menu" do
		expect(@message_center.create_menu(1).to_s).to include("Main Menu")
	end

	it "creates the student account menu" do
		expect(@message_center.create_menu(2).to_s).to include("Student Account Menu")
	end

	it "displays not added yet message with correct object" do
		expect(@message_center).to respond_to(:display_not_added_yet_message)
	end
end