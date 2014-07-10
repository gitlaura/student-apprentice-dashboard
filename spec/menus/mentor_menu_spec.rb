require 'menus/mentor_menu.rb'

describe "Mentor Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@mentor_menu = MentorMenu.new(@dashboard)
	end

	it "returns Update Mentor if 2 is selected" do  
		expect(@mentor_menu).to receive(:display_menu)
		expect(@mentor_menu).to receive(:get_menu_selection) {2}
		expect(@mentor_menu.run).to eq(UpdateMentor)
	end
end