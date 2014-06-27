require 'add_start_date_menu.rb'

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