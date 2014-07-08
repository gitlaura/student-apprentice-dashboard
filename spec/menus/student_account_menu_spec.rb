require 'menus/student_account_menu.rb'

describe "Student Account Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@student_account_menu = StudentAccountMenu.new(@dashboard)
	end

	it "returns NameMenu if 1 is selected" do  
		expect(@student_account_menu).to receive(:display_menu)
		expect(@student_account_menu).to receive(:get_menu_selection) {1}
		expect(@student_account_menu.run).to eq(NameMenu)
	end
end