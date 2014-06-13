describe "Dashboard" do
	before(:each) do 
		@dashboard = Dashboard.new
		@dashboard.stub(:exit_program).and_return("Goodbye!")
		@student = @dashboard.create_student("First", "Last")
	end

	it "gets the student's name" do 
		expect(@dashboard).to respond_to(:get_student_first_name)
		expect(@dashboard).to respond_to(:get_student_last_name)
	end

	it "creates a student" do 
		expect(@dashboard).to respond_to(:create_student)
		expect(@student.student_first_name).to eq("First")
		expect(@student.student_last_name).to eq("Last")
	end

	it "displays welcome message" do
		expect(@dashboard).to respond_to(:display_welcome_message)
	end

	it "displays welcome message" do
		expect(@dashboard).to respond_to(:display_welcome_message)
	end

	it "gets valid info input" do
		expect(@dashboard).to respond_to(:get_valid_info)
	end

	it "gets valid menu selection" do
		expect(@dashboard).to respond_to(:get_valid_menu_selection)
	end

	it "can act on the menu selection" do
		expect(@dashboard).to respond_to(:act_on_menu)
	end

	it "returns 'Exit' if make move is 5 on Main Menu" do 
		expect(@dashboard.act_on_menu(5, "Main")).to eq("Exit")
	end

	it "returns 'Invalid' if make move is 3 of Main Menu" do 
		expect(@dashboard.act_on_menu(3, "Main")).to eq("Invalid")
	end

	it "Returns invalid message if selection not available" do 
		expect(@dashboard).to respond_to(:option_not_available)
	end

	it "exits program" do 
		expect(@dashboard.exit_program).to eq("Goodbye!")
	end
end