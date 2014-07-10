require 'menus/back_to_schedule_menu.rb'

describe "Back To Schedule Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@back_to_schedule_menu = BackToScheduleMenu.new(@dashboard)
	end

	it "returns Main Menu if 2 is selected" do  
		expect(@back_to_schedule_menu).to receive(:display_menu)
		expect(@back_to_schedule_menu).to receive(:get_menu_selection) {2}
		expect(@back_to_schedule_menu.run).to eq(MainMenu)
	end
end