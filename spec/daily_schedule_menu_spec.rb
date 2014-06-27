require 'daily_schedule_menu.rb'

describe "Daily Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@daily_schedule_menu = DailyScheduleMenu.new(@dashboard)
	end

	it "returns View Daily Schedule if 1 is selected" do  
		@daily_schedule_menu.should_receive(:display_menu)
		@daily_schedule_menu.should_receive(:get_menu_selection) {1}
		expect(@daily_schedule_menu.run).to eq(ViewDailySchedule)
	end
end