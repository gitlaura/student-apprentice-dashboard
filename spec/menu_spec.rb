require 'menu.rb'

describe "Menu" do
	before (:each) do 
		@menu = Menu.new
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

	it "responds to the run method" do 
		expect(@menu).to respond_to(:run)
	end

	it "returns :exit if user selects 5 on main menu" do 
		@menu.should_receive(:display_menu)
		@menu.should_receive(:receive) {5}
		expect(@menu.run).to eq(:exit)
	end

	it "calls the give method from display menu" do 
		@menu.should_receive(:give).exactly(7).times
		@menu.display_menu
	end

	it "knows that zero and 6 are invalid selections" do 
		expect(@menu.valid_integer?(0)).to eq(false)
		expect(@menu.valid_integer?(6)).to eq(false)
	end

	it "returns invalid for an :invalid selection" do 
		expect(@menu.valid_option?(3)).to eq(false)
	end
end

describe "Student Account Menu" do
	before (:each) do 
		@student_account_menu = StudentAccountMenu.new
	end

	it "returns NameMenu if 1 is selected" do  
		@student_account_menu.should_receive(:display_menu)
		@student_account_menu.should_receive(:receive) {1}
		expect(@student_account_menu.run).to eq(NameMenu)
	end
end

describe "Student Menu" do
	before (:each) do 
		@name_menu = NameMenu.new
	end

	it "returns View Student if 1 is selected" do  
		@name_menu.should_receive(:display_menu)
		@name_menu.should_receive(:receive) {1}
		expect(@name_menu.run).to eq(ViewStudent)
	end
end

describe "Mentor Menu" do
	before (:each) do 
		@mentor_menu = MentorMenu.new
	end

	it "returns Update Mentor if 2 is selected" do  
		@mentor_menu.should_receive(:display_menu)
		@mentor_menu.should_receive(:receive) {2}
		expect(@mentor_menu.run).to eq(UpdateMentor)
	end
end