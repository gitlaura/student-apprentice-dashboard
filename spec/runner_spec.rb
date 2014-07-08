require 'runner.rb'

describe "Runner" do 
	before(:each) do 
		@runner = Runner.new
	end

	it "runs the dashboard" do
		expect(@runner).to respond_to(:run_dashboard)
	end

	it "runs the dashboard" do
		expect(@runner).to respond_to(:next_move)
	end

	it "runs menus or actions" do
		expect(@runner).to receive(:next_move) {:exit}
		expect(@runner).to receive(:exit)
		@runner.run(UpdateStudent)
	end

	it "exits the program" do
		expect(@runner).to respond_to(:exit)
	end
end