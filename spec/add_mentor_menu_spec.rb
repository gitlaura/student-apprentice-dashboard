require 'add_mentor_menu.rb'

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