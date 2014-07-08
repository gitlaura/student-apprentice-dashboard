require 'menus/menu.rb'

describe "Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@menu = Menu.new(@dashboard)
		@menu.valid_menu_options = [{"Main Menu" => MainMenu}]
	end

	it "calls display menu from run" do 
		#allow_message_expectations_on_nil
		expect(@menu).to receive(:display_menu)
		expect(@menu).to receive(:get_menu_selection) {1}
		@menu.run
	end

	it "calls the give method from display menu" do 
		allow_message_expectations_on_nil
		expect(@menu).to receive(:give).twice
		expect(@menu.valid_menu_options).to receive(:each_with_index)
		@menu.display_menu
	end

	it "calls the receive method from get menu selection" do 
		expect(@menu).to receive(:receive) {1}
		expect(@menu).to receive(:valid_integer?)
		expect(@menu).to receive(:valid_option?)
		@menu.get_menu_selection
	end
end