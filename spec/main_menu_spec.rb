require 'main_menu.rb'

describe "Main Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@main_menu = MainMenu.new(@dashboard)
	end

	it "returns Student Account Menu if 1 is selected" do  
		@main_menu.should_receive(:display_menu)
		@main_menu.should_receive(:get_menu_selection) {1}
		expect(@main_menu.run).to eq(StudentAccountMenu)
	end
end