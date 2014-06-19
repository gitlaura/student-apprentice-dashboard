require 'runner.rb'

describe "Runner" do 
	before(:each) do 
		@runner = Runner.new
		@runner.dashboard = Dashboard.new
	end

	it "runs the program" do
		@runner.should_receive(:display_welcome_message_with_name)
		@runner.should_receive(:run_menu)
		@runner.run_dashboard
	end

	it "displays welcome message with names" do
		@runner.dashboard.should_receive(:update_student)
		@runner.dashboard.should_receive(:display_welcome_message)
		@runner.display_welcome_message_with_name
	end

	it "runs menus" do
		@runner.dashboard.should_receive(:get_menu_number) {1}
		@runner.dashboard.should_receive(:get_valid_menu_selection) {5}
		@runner.dashboard.should_receive(:make_selection) {:update_mentor}
		@runner.should_receive(:make_move)
		@runner.run_menu(:main_menu)
	end
	
	it "runs menu if the next move is a menu" do
		@runner.should_receive(:run_menu)
		@runner.make_move(:student_menu)
	end

	it "tells the dashboard about invalid options" do 
		@runner.dashboard.should_receive(:option_not_available)
		@runner.should_receive(:run_menu)
		@runner.option_not_available(:main_menu)
	end

	it "exits the program" do
		expect(@runner).to respond_to(:exit_program)
	end
end