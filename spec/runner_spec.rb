require 'runner.rb'

describe "Runner" do 
	before(:each) do 
		@runner = Runner.new
		@runner.dashboard = Dashboard.new
	end

	it "runs the program" do
		@runner.should_receive(:display_welcome_message_with_name)
		@runner.should_receive(:run)
		@runner.run_dashboard
	end

	it "displays welcome message with names" do
		@runner.dashboard.should_receive(:update_student)
		@runner.dashboard.should_receive(:display_welcome_message)
		@runner.display_welcome_message_with_name
	end

	it "runs menus or actions" do
		@runner.dashboard.should_receive(:exit)
		@runner.run(:exit)
	end

	it "exits the program" do
		expect(@runner).to respond_to(:exit)
	end
end