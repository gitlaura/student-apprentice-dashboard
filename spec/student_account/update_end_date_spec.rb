require 'student_account/update_end_date.rb'

describe "Update End Date" do  
	before(:each) do  
		@dashboard = Dashboard.new
		@update_end_date = UpdateEndDate.new(@dashboard)
	end

	it "gets month day and year of end date" do 
		expect(@update_end_date).to receive(:give)
		expect(@update_end_date).to receive(:receive) {"5/30/1987"}
		@update_end_date.run
		expect(@update_end_date.dashboard.end_date.month).to eq(5)
		expect(@update_end_date.dashboard.end_date.day).to eq(30)
		expect(@update_end_date.dashboard.end_date.year).to eq(1987)
	end

	it "asks for date" do  
		expect(@update_end_date).to receive(:give)
		expect(@update_end_date).to receive(:receive) {"05/30/1987"}
		expect(@update_end_date.get_date).to eq([5,30,1987])
	end

	it "creates date" do 
		expect(@update_end_date.create_date("05/30/1987")).to eq([5,30,1987])
	end
end