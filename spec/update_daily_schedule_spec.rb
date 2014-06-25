require 'update_daily_schedule.rb'

describe "Update Student" do 
	before (:each) do 
		@dashboard = Dashboard.new
		@update_daily_schedule = UpdateDailySchedule.new(@dashboard)
	end

	it "asks for the schedule with run" do 
		@update_daily_schedule.should_receive(:get_schedule)
		expect(@update_daily_schedule.run).to eq(ViewDailySchedule)
	end

	it "makes sure input is valid" do 
		@update_daily_schedule.should_receive(:give).exactly(5).times
		@update_daily_schedule.should_receive(:receive).exactly(5).times {"Y"}
		expect(@update_daily_schedule.get_schedule).to eq(["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"])
	end
end