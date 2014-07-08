require 'menus/schedule_menu.rb'

describe "Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@schedule_menu = ScheduleMenu.new(@dashboard)
	end

	it "returns Daily Schedule if 1 is selected" do  
		expect(@schedule_menu).to receive(:display_menu)
		expect(@schedule_menu).to receive(:get_menu_selection) {1}
		expect(@schedule_menu.run).to eq(DailyScheduleMenu)
	end
end