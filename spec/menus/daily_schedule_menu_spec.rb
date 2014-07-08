require 'menus/daily_schedule_menu.rb'

describe "Daily Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@daily_schedule_menu = DailyScheduleMenu.new(@dashboard)
	end

	it "returns View Daily Schedule if 1 is selected" do  
		expect(@daily_schedule_menu).to receive(:display_menu)
		expect(@daily_schedule_menu).to receive(:get_menu_selection) {1}
		expect(@daily_schedule_menu.run).to eq(ViewDailySchedule)
	end
end