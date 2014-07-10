require 'menus/end_date_menu.rb'

describe "End Date Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@end_date_menu = EndDateMenu.new(@dashboard)
	end

	it "returns Main Menu if 4 is selected" do  
		expect(@end_date_menu).to receive(:display_menu)
		expect(@end_date_menu).to receive(:get_menu_selection) {4}
		expect(@end_date_menu.run).to eq(MainMenu)
	end
end