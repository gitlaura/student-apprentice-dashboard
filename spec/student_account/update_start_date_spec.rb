require 'student_account/update_start_date.rb'

describe "Update Start Date" do  
	before(:each) do  
		@dashboard = Dashboard.new
		@update_start_date = UpdateStartDate.new(@dashboard)
	end

	it "gets month day and year of start date" do 
		expect(@update_start_date).to receive(:give)
		expect(@update_start_date).to receive(:receive) {"5/30/1987"}
		@update_start_date.run
		expect(@update_start_date.dashboard.start_date.month).to eq(5)
		expect(@update_start_date.dashboard.start_date.day).to eq(30)
		expect(@update_start_date.dashboard.start_date.year).to eq(1987)
	end

	it "asks for date" do  
		expect(@update_start_date).to receive(:give)
		expect(@update_start_date).to receive(:receive) {"05/30/1987"}
		expect(@update_start_date.get_date).to eq([5,30,1987])
	end

	it "creates date" do 
		expect(@update_start_date.create_date("05/30/1987")).to eq([5,30,1987])
	end
end