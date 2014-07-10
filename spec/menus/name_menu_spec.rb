require 'menus/name_menu.rb'

describe "Name Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@name_menu = NameMenu.new(@dashboard)
	end

	it "returns View Student if 1 is selected" do  
		expect(@name_menu).to receive(:display_menu)
		expect(@name_menu).to receive(:get_menu_selection) {1}
		expect(@name_menu.run).to eq(ViewStudent)
	end
end