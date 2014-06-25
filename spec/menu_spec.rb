require 'menu.rb'

describe "Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@menu = Menu.new(@dashboard)
	end

	it "has a title named Main Menu" do 
		expect(@menu.title).to eq("Main Menu")
	end

	it "has valid menu options" do 
		expect(@menu.valid_menu_options[0].nil?).to eq(false)
	end

	it "has the first menu option key as Student Account" do 
		expect(@menu.valid_menu_options[0].keys[0]).to eq("Student Account")
	end

	it "has the fifth menu option value as Exit" do 
		expect(@menu.valid_menu_options[4].values[0]).to eq(:exit)
	end

	it "returns :exit if user selects 5 on main menu" do 
		@menu.should_receive(:display_menu)
		@menu.should_receive(:get_menu_selection) {5}
		expect(@menu.run).to eq(:exit)
	end

	it "calls the give method from display menu" do 
		@menu.should_receive(:give).exactly(7).times
		@menu.display_menu
	end

	it "calls the receive method from get menu selection" do 
		@menu.should_receive(:receive) {5}
		@menu.should_receive(:valid_integer?)
		@menu.should_receive(:valid_option?)
		@menu.get_menu_selection
	end
end

describe "Student Account Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@student_account_menu = StudentAccountMenu.new(@dashboard)
	end

	it "returns NameMenu if 1 is selected" do  
		@student_account_menu.should_receive(:display_menu)
		@student_account_menu.should_receive(:get_menu_selection) {1}
		expect(@student_account_menu.run).to eq(NameMenu)
	end
end

describe "Student Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@name_menu = NameMenu.new(@dashboard)
	end

	it "returns View Student if 1 is selected" do  
		@name_menu.should_receive(:display_menu)
		@name_menu.should_receive(:get_menu_selection) {1}
		expect(@name_menu.run).to eq(ViewStudent)
	end
end

describe "Mentor Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@mentor_menu = MentorMenu.new(@dashboard)
	end

	it "returns Update Mentor if 2 is selected" do  
		@mentor_menu.should_receive(:display_menu)
		@mentor_menu.should_receive(:get_menu_selection) {2}
		expect(@mentor_menu.run).to eq(UpdateMentor)
	end
end

describe "Add Mentor Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_mentor_menu = AddMentorMenu.new(@dashboard)
	end

	it "returns Update Mentor if 1 is selected" do  
		@add_mentor_menu.should_receive(:display_menu)
		@add_mentor_menu.should_receive(:get_menu_selection) {1}
		expect(@add_mentor_menu.run).to eq(UpdateMentor)
	end
end

describe "Back To Student Account Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@back_to_student_account_menu = BackToStudentAccountMenu.new(@dashboard)
	end

	it "returns Main Menu if 2 is selected" do  
		@back_to_student_account_menu.should_receive(:display_menu)
		@back_to_student_account_menu.should_receive(:get_menu_selection) {2}
		expect(@back_to_student_account_menu.run).to eq(Menu)
	end
end

describe "Start Date Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@start_date_menu = StartDateMenu.new(@dashboard)
	end

	it "returns Main Menu if 4 is selected" do  
		@start_date_menu.should_receive(:display_menu)
		@start_date_menu.should_receive(:get_menu_selection) {4}
		expect(@start_date_menu.run).to eq(Menu)
	end
end

describe "Add Start Date Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_start_date_menu = AddStartDateMenu.new(@dashboard)
	end

	it "returns Update Start Date if 1 is selected" do  
		@add_start_date_menu.should_receive(:display_menu)
		@add_start_date_menu.should_receive(:get_menu_selection) {1}
		expect(@add_start_date_menu.run).to eq(UpdateStartDate)
	end
end

describe "End Date Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@end_date_menu = EndDateMenu.new(@dashboard)
	end

	it "returns Main Menu if 4 is selected" do  
		@end_date_menu.should_receive(:display_menu)
		@end_date_menu.should_receive(:get_menu_selection) {4}
		expect(@end_date_menu.run).to eq(Menu)
	end
end

describe "Add End Date Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_end_date_menu = AddEndDateMenu.new(@dashboard)
	end

	it "returns Update End Date if 1 is selected" do  
		@add_end_date_menu.should_receive(:display_menu)
		@add_end_date_menu.should_receive(:get_menu_selection) {1}
		expect(@add_end_date_menu.run).to eq(UpdateEndDate)
	end
end

describe "Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@schedule_menu = ScheduleMenu.new(@dashboard)
	end

	it "returns Daily Schedule if 1 is selected" do  
		@schedule_menu.should_receive(:display_menu)
		@schedule_menu.should_receive(:get_menu_selection) {1}
		expect(@schedule_menu.run).to eq(DailyScheduleMenu)
	end
end

describe "Daily Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@daily_schedule_menu = DailyScheduleMenu.new(@dashboard)
	end

	it "returns View Daily Schedule if 1 is selected" do  
		@daily_schedule_menu.should_receive(:display_menu)
		@daily_schedule_menu.should_receive(:get_menu_selection) {1}
		expect(@daily_schedule_menu.run).to eq(ViewDailySchedule)
	end
end

describe "Add Daily Schedule Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_daily_schedule_menu = AddDailyScheduleMenu.new(@dashboard)
	end

	it "returns View Daily Schedule if 1 is selected" do  
		@add_daily_schedule_menu.should_receive(:display_menu)
		@add_daily_schedule_menu.should_receive(:get_menu_selection) {1}
		expect(@add_daily_schedule_menu.run).to eq(UpdateDailySchedule)
	end
end
