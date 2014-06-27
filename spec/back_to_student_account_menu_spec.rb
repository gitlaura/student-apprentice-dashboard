require 'back_to_student_account_menu.rb'

describe "Back To Student Account Menu" do
	before (:each) do 
		@dashboard = Dashboard.new
		@back_to_student_account_menu = BackToStudentAccountMenu.new(@dashboard)
	end

	it "returns Main Menu if 2 is selected" do  
		@back_to_student_account_menu.should_receive(:display_menu)
		@back_to_student_account_menu.should_receive(:get_menu_selection) {2}
		expect(@back_to_student_account_menu.run).to eq(MainMenu)
	end
end