require 'menu.rb'

describe "Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@menu = Menu.new(@dashboard)
		@menu.valid_menu_options = [{"Main Menu" => MainMenu}]
	end

	it "calls display menu from run" do 
		#allow_message_expectations_on_nil
		@menu.should_receive(:display_menu)
		@menu.should_receive(:get_menu_selection) {1}
		@menu.run
	end

	it "calls the give method from display menu" do 
		allow_message_expectations_on_nil
		@menu.should_receive(:give).twice
		@menu.valid_menu_options.should_receive(:each_with_index)
		@menu.display_menu
	end

	it "calls the receive method from get menu selection" do 
		@menu.should_receive(:receive) {1}
		@menu.should_receive(:valid_integer?)
		@menu.should_receive(:valid_option?)
		@menu.get_menu_selection
	end
end