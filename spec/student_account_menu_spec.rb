require 'student_account_menu.rb'

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