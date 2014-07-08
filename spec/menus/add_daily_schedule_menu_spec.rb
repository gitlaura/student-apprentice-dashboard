require 'menus/add_daily_schedule_menu'

describe "Add Daily Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_daily_schedule_menu = AddDailyScheduleMenu.new(@dashboard)
	end

	it "returns View Daily Schedule if 1 is selected" do  
		expect(@add_daily_schedule_menu).to receive(:display_menu)
		expect(@add_daily_schedule_menu).to receive(:get_menu_selection) {1}
		expect(@add_daily_schedule_menu.run).to eq(UpdateDailySchedule)
	end
end