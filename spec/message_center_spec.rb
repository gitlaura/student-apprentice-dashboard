require 'message_center'

describe "MessageCenter" do
	before(:each) do 
		@mc = MessageCenter.new
	end

	it "gets a menu selection" do
		expect(@mc).to respond_to(:get_menu_selection)
	end

	it "gets information" do
		expect(@mc).to respond_to(:get_info)
	end

	it "asks for a users name" do
		expect(@mc).to respond_to(:get_first_name)
		expect(@mc).to respond_to(:get_last_name)
	end

	it "displays the welcome message" do
		expect(@mc).to respond_to(:welcome_message)
	end

	it "displays an exit message" do 
		expect(@mc).to respond_to(:exit)
	end

	it "displays menus" do
		expect(@mc).to respond_to(:display_menu)
	end

	it "displays error if selection is not an integer" do
		expect(@mc).to respond_to(:display_integer_message)
	end

	it "displays error if selection is not an string" do
		expect(@mc).to respond_to(:display_string_message)
	end

	it "displays the invalid selection message" do
		expect(@mc).to respond_to(:display_invalid_selection)
	end

	it "has a main menu" do
		expect(@mc).to respond_to(:write_main_menu)
	end
end