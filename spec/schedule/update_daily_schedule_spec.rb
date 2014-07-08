require 'schedule/update_daily_schedule.rb'

describe "Update Student" do 
	before (:each) do 
		@dashboard = Dashboard.new
		@update_daily_schedule = UpdateDailySchedule.new(@dashboard)
	end

	it "asks for the schedule with run" do 
		expect(@update_daily_schedule).to receive(:get_schedule)
		expect(@update_daily_schedule.run).to eq(ViewDailySchedule)
	end

	it "makes sure input is valid" do 
		expect(@update_daily_schedule).to receive(:give).exactly(5).times
		expect(@update_daily_schedule).to receive(:receive).exactly(5).times {"Y"}
		expect(@update_daily_schedule.get_schedule).to eq(["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"])
	end
end