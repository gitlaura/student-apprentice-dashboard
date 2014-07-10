require 'menus/add_mentor_menu.rb'

describe "Add Mentor Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_mentor_menu = AddMentorMenu.new(@dashboard)
	end

	it "returns Update Mentor if 1 is selected" do  
		expect(@add_mentor_menu).to receive(:display_menu)
		expect(@add_mentor_menu).to receive(:get_menu_selection) {1}
		expect(@add_mentor_menu.run).to eq(UpdateMentor)
	end
end