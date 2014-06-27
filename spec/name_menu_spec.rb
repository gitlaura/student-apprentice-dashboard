require 'name_menu.rb'

describe "Name Menu" do
	before (:each) do
		@dashboard = Dashboard.new
		@name_menu = NameMenu.new(@dashboard)
	end

	it "returns View Student if 1 is selected" do  
		@name_menu.should_receive(:display_menu)
		@name_menu.should_receive(:get_menu_selection) {1}
		expect(@name_menu.run).to eq(ViewStudent)
	end
end