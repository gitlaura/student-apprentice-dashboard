require 'menus/main_menu.rb'

describe "Main Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@main_menu = MainMenu.new(@dashboard)
	end

	it "returns Student Account Menu if 1 is selected" do  
		expect(@main_menu).to receive(:display_menu)
		expect(@main_menu).to receive(:get_menu_selection) {1}
		expect(@main_menu.run).to eq(StudentAccountMenu)
	end
end