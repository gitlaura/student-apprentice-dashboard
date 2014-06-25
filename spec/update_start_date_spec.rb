require 'update_start_date.rb'

describe "Update Start Date" do  
	before(:each) do  
		@dashboard = Dashboard.new
		@update_start_date = UpdateStartDate.new(@dashboard)
	end

	it "gets month day and year of start date" do 
		@update_start_date.should_receive(:get_date) {"05/30/1987"}
		@update_start_date.run
		expect(@update_start_date.dashboard.start_date.month).to eq(5)
	end

	it "asks for date" do  
		@update_start_date.should_receive(:give)
		@update_start_date.should_receive(:receive) {"05/30/1987"}
		expect(@update_start_date.get_date).to eq("05/30/1987")
	end
end