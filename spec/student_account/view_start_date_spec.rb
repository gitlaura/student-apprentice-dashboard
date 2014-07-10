require 'student_account/view_start_date.rb'

describe "View Start Date" do  
	before(:each) do   
		@dashboard = Dashboard.new
		@view_start_date = ViewStartDate.new(@dashboard)
	end

	it "saves the date's year, month, and day" do 
		@view_start_date.month = 5
		@view_start_date.day = 30
		@view_start_date.year = 1987
		expect(@view_start_date.month).to eq(5)
		expect(@view_start_date.day).to eq(30)
		expect(@view_start_date.year).to eq(1987)
	end

	it "runs a method that displays the date" do 
		@view_start_date.month = 5
		@view_start_date.day = 30
		@view_start_date.year = 1987
		expect(@view_start_date).to receive(:give).once
		@view_start_date.run
	end

	it "returns back to student account menu" do 
		@view_start_date.month = 5
		@view_start_date.day = 30
		@view_start_date.year = 1987
		expect(@view_start_date).to receive(:display_date).once
		expect(@view_start_date.run).to eq(BackToStudentAccountMenu)
	end

	it "returns Add Start Date if names are blank" do 
		expect(@view_start_date).to receive(:give)
		expect(@view_start_date.run).to eq(AddStartDateMenu)
	end
end