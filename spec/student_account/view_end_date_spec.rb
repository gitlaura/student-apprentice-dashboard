require 'student_account/view_end_date.rb'

describe "View End Date" do  
	before(:each) do   
		@dashboard = Dashboard.new
		@view_end_date = ViewEndDate.new(@dashboard)
	end

	it "saves the date's year, month, and day" do 
		@view_end_date.month = 5
		@view_end_date.day = 30
		@view_end_date.year = 1987
		expect(@view_end_date.month).to eq(5)
		expect(@view_end_date.day).to eq(30)
		expect(@view_end_date.year).to eq(1987)
	end

	it "runs a method that displays the date" do 
		@view_end_date.month = 5
		@view_end_date.day = 30
		@view_end_date.year = 1987
		expect(@view_end_date).to receive(:give).once
		@view_end_date.run
	end

	it "returns back to student account menu" do 
		@view_end_date.month = 5
		@view_end_date.day = 30
		@view_end_date.year = 1987
		expect(@view_end_date).to receive(:display_date).once
		expect(@view_end_date.run).to eq(BackToStudentAccountMenu)
	end

	it "returns Add End Date if names are blank" do 
		expect(@view_end_date).to receive(:give)
		expect(@view_end_date.run).to eq(AddEndDateMenu)
	end
end