require 'runner.rb'

describe "Runner" do 
	before(:each) do 
		@runner = Runner.new
	end

	it "runs the dashboard" do
		expect(@runner).to respond_to(:run_dashboard)
	end

	it "runs menus or actions" do
		@dashboard = Dashboard.new
		@runner.dashboard = @dashboard
		@runner.dashboard.should_receive(:run) {:exit}
		@runner.should_receive(:exit)
		@runner.run(UpdateStudent)
	end

	it "exits the program" do
		@dashboard = Dashboard.new
		@runner.dashboard = @dashboard
		@runner.dashboard.should_receive(:exit)
		@runner.exit
	end
end