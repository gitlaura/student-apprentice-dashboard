require 'back_to_schedule_menu.rb'

describe "Back To Schedule Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@back_to_schedule_menu = BackToScheduleMenu.new(@dashboard)
	end

	it "returns Main Menu if 2 is selected" do  
		@back_to_schedule_menu.should_receive(:display_menu)
		@back_to_schedule_menu.should_receive(:get_menu_selection) {2}
		expect(@back_to_schedule_menu.run).to eq(MainMenu)
	end
end