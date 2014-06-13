require 'runner.rb'

describe "Runner" do 
	before(:each) do 
		@runner = Runner.new
		@runner.dashboard = Dashboard.new
		@runner.stub(:run_dashboard)
	end
	it "saves dashboard" do
		expect(@runner.dashboard).not_to eq(nil)
	end

	it "runs the program" do
		expect(@runner).to respond_to(:run_dashboard)
	end

	it "displays welcome message with names" do
		expect(@runner).to respond_to(:display_welcome_message)
	end

	it "opens the Main menu" do
		expect(@runner).to respond_to(:run_menu)
	end

	it "exits the program" do
		expect(@runner).to respond_to(:exit_program)
	end
end