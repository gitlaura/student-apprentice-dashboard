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
		@message_center.ui.should_receive(:give)
		@message_center.get_name_message("mentor", "first")
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
		@message_center.display_menu(["Test", "test", "test"])
	end

	it "creates the main menu" do
		expect(@message_center.create_menu(["Main Menu", "Test", "Test2"]).to_s).to include("Main Menu")
	end
end