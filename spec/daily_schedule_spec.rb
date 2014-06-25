require 'daily_schedule.rb'

describe "Daily Schedule" do 
	before (:each) do 
		@daily_schedule = DailySchedule.new
		@daily_schedule.days = "T, W"
	end

	it "creates the correct first and last name" do  
		expect(@daily_schedule.days).to eq("T, W")
	end
end
