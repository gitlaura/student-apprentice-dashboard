require 'student_account/start_date.rb'

describe "Start Date" do 
	before (:each) do 
		@start_date = StartDate.new
		@start_date.month = "May"
		@start_date.day = 19
		@start_date.year = 2014
	end

	it "saves the correct date" do  
		expect(@start_date.month).to eq("May")
		expect(@start_date.year).to eq(2014)
	end
end