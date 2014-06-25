require 'end_date.rb'

describe "End Date" do 
	before (:each) do 
		@end_date = EndDate.new
		@end_date.month = "September"
		@end_date.day = 19
		@end_date.year = 2014
	end

	it "saves the correct date" do  
		expect(@end_date.month).to eq("September")
		expect(@end_date.year).to eq(2014)
	end
end