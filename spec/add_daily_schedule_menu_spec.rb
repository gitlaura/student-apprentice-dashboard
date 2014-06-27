require 'add_daily_schedule_menu.rb'

describe "Add Daily Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_daily_schedule_menu = AddDailyScheduleMenu.new(@dashboard)
	end

	it "returns View Daily Schedule if 1 is selected" do  
		@add_daily_schedule_menu.should_receive(:display_menu)
		@add_daily_schedule_menu.should_receive(:get_menu_selection) {1}
		expect(@add_daily_schedule_menu.run).to eq(UpdateDailySchedule)
	end
end