require 'menus/add_end_date_menu.rb'

describe "Add End Date Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@add_end_date_menu = AddEndDateMenu.new(@dashboard)
	end

	it "returns Update End Date if 1 is selected" do  
		expect(@add_end_date_menu).to receive(:display_menu)
		expect(@add_end_date_menu).to receive(:get_menu_selection) {1}
		expect(@add_end_date_menu.run).to eq(UpdateEndDate)
	end
end