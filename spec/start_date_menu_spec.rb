require 'start_date_menu.rb'

describe "Start Date Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@start_date_menu = StartDateMenu.new(@dashboard)
	end

	it "returns Main Menu if 4 is selected" do  
		@start_date_menu.should_receive(:display_menu)
		@start_date_menu.should_receive(:get_menu_selection) {4}
		expect(@start_date_menu.run).to eq(MainMenu)
	end
end