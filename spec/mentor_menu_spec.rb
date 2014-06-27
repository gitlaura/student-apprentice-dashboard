require 'mentor_menu.rb'

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