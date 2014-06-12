require 'runner'

describe "Runner" do 
	it "saves dashboard" do 
		@runner = Runner.new
		expect(@runner.dashboard).not_to eq(nil)
	end

	it "runs the program" do 
		@runner = Runner.new
		expect(@runner).to respond_to(:run_dashboard)
	end
end