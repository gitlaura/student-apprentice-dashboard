require 'schedule/view_daily_schedule.rb'

describe "View Daily Schedule" do  
	before(:each) do   
		@dashboard = Dashboard.new
		@view_daily_schedule = ViewDailySchedule.new(@dashboard)
	end

	it "shows schedule when run is called" do
		expect(@view_daily_schedule).to receive(:give)
		expect(@view_daily_schedule.run).to eq(AddDailyScheduleMenu)
	end

	it "displays daily schedule" do 
		@view_daily_schedule.days = ["Monday", "No", "Wednesday", "No", "Friday"]
		expect(@view_daily_schedule).to receive(:give)
		@view_daily_schedule.display_schedule
		expect(@view_daily_schedule.schedule).to eq("M, W, F")
	end
end